SHELL = /bin/sh

all:	txt html

target:	
	@ if [ ! -d target ]; then mkdir target; fi	

%.xml:	%.mkd ../transform.xsl target
	pandoc $< -t docbook -s | xsltproc ../transform.xsl - > target/$@

txt:	middle.xml back.xml template.xml
	cp template.xml target/ && cd target && xml2rfc template.xml --text --no-dtd -b draft

html: 	middle.xml back.xml template.xml
	cp template.xml target/ && cd target && xml2rfc template.xml --html --no-dtd -b draft

clean:
	rm -rf target 

