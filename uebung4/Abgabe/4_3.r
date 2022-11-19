
# Normalverteilungswerte für Weiblich Population
muf <- 85
sigf <- 6

# Normalverteilungswerte für Männlich Population
mum <- 98
sigm <- 10




# Berechnen der gesuchten Werte für 3b) mithilfe der im Dokument angegebenen Umformungen
pB1 <- 1 - pnorm(95, muf, sigf)
print(pB1)
pB2 <- 1 - pnorm(110, mum, sigm)
print(pB2)


# Berechnen der gesuchten Werte für 3c) mithilfe der im Dokument angegebenen Umformungen
pC1 <- pnorm(75, muf, sigf) + (1- pnorm(108, muf, sigf))
print(pC1)

pC2 <- pnorm(75, mum, sigm) + (1- pnorm(108, mum, sigm))
print(pC2)

# Berechnen des Schnittpunktes der beiden Funktionen für 3e) mithilfe der uniroot Funktion 
intersection <- uniroot(function(x)  dnorm(x, mum, sigm) - dnorm(x, muf, sigf)  , c(70,110), tol=1e-8)     
all.equal(dnorm(rt$root, mum, sigm), dnorm(rt$root, muf, sigf))
print(intersection)