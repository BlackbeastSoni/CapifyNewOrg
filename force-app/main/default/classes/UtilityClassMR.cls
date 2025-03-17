/**
* @desc			: Utility Class to parse XML response from ABN API
* @date			: 2021-09-30
* @test class 	: 
* @version		: 1.0
* @author		: Shubham Soni
*/

public class UtilityClassMR {
    public static void parseXMLABN(Dom.XmlNode xmlNode, Map<String, Object> jsonData) {
        System.debug('## parse exm: '+ jsonData);
        //Specify KEYS, These will always be treated as a list even if it is a single element.
		List<String> KEYS = new List<String>{ 
			'mainBusinessPhysicalAddress', 
			'businessName', 
			'mainTradingName', 
			'otherTradingName', 
			'mainName', 
			'legalName', 
			'entityStatus', 
			'goodsAndServicesTax' 
		};

		for (Dom.XmlNode childNode : xmlNode.getChildElements()) {

			String childNodeName = childNode.getName().replaceAll('-', '_');
	
			Map<String, Object> childMap = new Map<String, Object>();
			Map<String, String> attrMap = new Map<String, String>();
	
			for (Integer i = 0; i < childNode.getAttributeCount(); i++) {
				String attributeName = childNode.getAttributeKeyAt(i);
				String attributeNameNS = childNode.getAttributeKeyNsAt(i);
				String attributeValue = childNode.getAttributeValue(attributeName, attributeNameNS);
				attrMap.put(attributeName.replaceAll('-', '_'), attributeValue);
			}
	
			if (!attrMap.isEmpty()) {
				childMap.put('attributes', attrMap);
			}
	
			if (childNode.getChildElements().isEmpty()) {
				childMap.put('value', childNode.getText().trim());
			} else {
				parseXMLABN(childNode, childMap);
			}
	
			if (KEYS.contains(childNodeName)) {
				if (jsonData.containsKey(childNodeName)) {
					List<Object> existingValue = (List<Object>) jsonData.get(childNodeName);
					existingValue.add(childMap);
				} else {
					jsonData.put(childNodeName, new List<Object> { childMap });
				}
			} else if (jsonData.containsKey(childNodeName)) {

				Object existingValue = jsonData.get(childNodeName);
				
				if (existingValue instanceof List<Object>) {
					((List<Object>) existingValue).add(childMap);
				} else {
					jsonData.put(childNodeName, new List<Object>{ existingValue, childMap });
				}
			} else {
				jsonData.put(childNodeName, childMap);
			}
		}
	}

	public static void handleApexException(Exception e, String ClassName) {
		System.debug('Exception in : ' + ClassName+'Exception occuring in : ' + ClassName + ' at line : ' + e.getLineNumber() + ', Reason is : ' + e.getMessage() + ', Due to' + e.getCause() + '\n' + e.getStackTraceString());
	}
}