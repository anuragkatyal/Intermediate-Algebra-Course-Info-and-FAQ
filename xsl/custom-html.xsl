<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:import href="./core/pretext-html.xsl"/>

    <!-- First-time visitors default to dark mode; the reader's own -->
    <!-- explicit light/dark/system choice (stored in localStorage) -->
    <!-- always takes precedence once they've made one. -->
    <xsl:template match="*" mode="file-wrap-head-pre">
        <script>
            if (!localStorage.getItem('theme')) { localStorage.setItem('theme', 'dark'); }
        </script>
    </xsl:template>

</xsl:stylesheet>
