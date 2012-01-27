all:	
	cd filter && ${MAKE}
	cd sort && ${MAKE}

clean:
	cd filter && ${MAKE} clean
	cd sort && ${MAKE} clean
