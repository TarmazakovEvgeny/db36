<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">

<university   name="Mephi" address="Russia, Moscow city, Kashirskoe freeway 31">
	<faculty name="Kib" korp="K" dekan="Efseev">
		<department tag = "K" name="Information system and technology" number="36" website="www.kaf36.ru">
			<group number="1" entryyear="2012">
<xsl:attribute name="fullname">	
<xsl:for-each select="//department[@number = '36']/group[@number='1']">		
<xsl:value-of select="concat(string(ancestor::department/@tag),string(2*(2014.0-number(@entryyear))+1),'-',string(ancestor::department/@number),string(@number))"/>
</xsl:for-each>
</xsl:attribute>
        		        <student number = "1"> Anisimova</student>
       			        <student number = "2">Artemev</student>
				<student number = "3">Bybenko</student>
				<student number = "4">Dzheloukhova</student>
				<student number = "5">Zamanov</student>
				<student number = "6">Mikheev</student>
				<student number = "7">Pivovarov</student>
				<student number = "8">Samsonov</student>
				<student number = "9">Sidorova</student>
				<student number = "10">Soloveva</student>
				<student number = "11">Tarmazakov</student>
				<student number = "12">Titorenko</student>
				<student number = "13">Shtanko</student>
			</group>
           		<group number="2" entryyear="2012">
                		<student>Erochin</student>
				<student>Strekalov</student>
                		<student>Ivanov</student>
            		</group>
        	</department>
		<department tag="K" name="Software Engineering" number="22">
			<group number="1" entryyear="2012">
				<student>Burambekova</student>
			</group>
		</department>
		<department tag="K" name="Mathematical software systems" number="33">
			<group number="1" entryyear="2012">
				<student>Khuzin</student>
			</group>
		</department>
	</faculty>
	<faculty name="A">
		<department tag="A" name="Automation and Electronics" number="6">
			<group number="1" entryyear="2012">
				<student>Varfolomeev</student> 
			</group>
		</department>
	</faculty>
</university>
</xsl:template>
</xsl:stylesheet>

