<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" indent="yes"/>
  <xsl:template match="login-status">
    <div style="text-align: center">
      <form action="authentication.jsp" method="post">
        <input type="hidden" name="action" value="login"/>
        <table border="0" width="100%" cellspacing="0" cellpadding="10">
          <tr>
            <td width="100%" class="uportal-background-dark">
              <xsl:apply-templates/>
              <div style="text-align: center">
                <table border="0" class="uportal-background-med" cellspacing="0" cellpadding="6">
                  <tr>
                    <td valign="top">
                      <p class="uportal-label">User name:<br/>
                        <input class="uportal-input-text" type="text" name="userName" size="15">
                          <xsl:attribute name="value"><xsl:value-of select="/login-status/failure/@userName"/></xsl:attribute>
                        </input>
                      </p>
                    </td>
                  </tr>
                  <tr>
                    <td valign="top">
                      <p class="uportal-label">Password:<br/>
                        <input class="uportal-input-text" type="password" name="password" size="15"/>
                      </p>
                    </td>
                  </tr>
                  <tr>
                    <td align="right" valign="top">
                      <input type="submit" value="Login" name="Login" class="uportal-button"/>
                    </td>
                  </tr>
                </table>
                <br/>
              </div>
            </td>
          </tr>
        </table>
      </form>
      <br/>
    </div>
  </xsl:template>
  <xsl:template match="failure">
    <div style="text-align: center">
      <table border="0" width="80%" cellspacing="0" cellpadding="10">
        <tr>
          <td class="uportal-background-light" align="center">
            <p class="uportal-channel-warning">The user name/password combination entered is not recognized. Please try again!</p>
          </td>
        </tr>
      </table>
      <br/>
    </div>
  </xsl:template>
</xsl:stylesheet>
