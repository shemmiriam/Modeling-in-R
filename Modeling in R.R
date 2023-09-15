 data = read . csv ( " goog . csv " , header=TRUE) #Read in the data
 n = dim( da ta ) [ 1 ]
n
[ 1 ] 1671
data = data [ n : 1,]
install.packages ( " quantmod " )
yhoo = as . ma tr ix (YHOO[ , 6 ] )
a apl = as . ma tr ix (AAPL [ , 6 ] )
c sco = as . ma tr ix (CSCO [ , 6 ] )
ibm = as . ma tr ix ( IBM [ , 6 ] )
stkdata = cbind ( yhoo , aapl , csco , ibm )
dim( stkdata )
[ 1 ] 2018 4
n = leng th ( stkdata [ , 1 ] )
n
[ 1 ] 2018
rets = log ( stkdata[ 2 : n , ] / stkdata [ 1 : ( n−1 ) , ] )
colMeans ( r e t s )
YHOO. Adjus ted AAPL. Adjus ted CSCO. Adjus ted IBM . Adjus ted
3.1 7 5 1 8 5 e−04 1.1 1 6 2 5 1 e−03 4.1 0 6 3 1 4 e−05 3.0 3 8 8 2 4 e−04
cv = cov ( r e t s )
prin t ( cv , 2 )
YHOO. Adjus ted AAPL. Adjus ted CSCO. Adjus ted IBM . Adjus ted
YHOO. Adjus ted 0.0 0 0 6 7 0.0 0 0 2 0 0.0 0 0 2 2 0.0 0 0 1 5
AAPL. Adjus ted 0.0 0 0 2 0 0.0 0 0 4 8 0.0 0 0 2 1 0.0 0 0 1 5
CSCO. Adjusted 0.0 0 0 2 2 0.0 0 0 2 1 0.0 0 0 4 1 0.0 0 0 1 7
IBM . Adjus ted 0.0 0 0 1 5 0.0 0 0 1 5 0.0 0 0 1 7 0.0 0 0 2 1
> c r = co r ( r e t s )
> p r in t ( cr , 4 )
YHOO. Adjus ted AAPL. Adjus ted CSCO. Adjus ted IBM . Adjus ted
YHOO. Adjus ted 1.0 0 0 0 0.3 5 7 7 0.4 1 7 0 0.3 9 0 0
AAPL. Adjus ted 0.3 5 7 7 1.0 0 0 0 0.4 8 7 2 0.4 8 6 7
CSCO. Adjusted 0.4 1 7 0 0.4 8 7 2 1.0 0 0 0 0.5 8 4 2
IBM . Adjus ted 0.3 9 0 0 0.4 8 6 7 0.5 8 4 2 1.0 0 0 0























