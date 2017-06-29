<?xml version="1.0"?>
<recipe>

    <instantiate from="src/app_package/UI.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}UI.kt" />
    <instantiate from="src/app_package/Controller.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Controller.kt" />

    <open file="${srcOut}/${className}Controller.kt"/>
</recipe>
