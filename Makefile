CC= gcc
market : market.c product.o manager.o
	$(CC) -o  $@ $^
product.o : product.c product.h
	$(CC) -c product.c
manager.o : manager.c manager.h
	$(CC) -c manager.c
clean :
	rm *.o market
