library(ggplot2)
n <- 100 # Gesamtanzahl Würfe
df <- data.frame(
  anzahl_wuerfe = 1:n, # Anzahl Würfe
  abs_hf = cumsum(cumsum( # kummulierte absolute Häufigkeit
    sample(1:2, n, replace = TRUE ) == 2)==5)
)
p <- ggplot(df, aes(x = anzahl_wuerfe,
                    y = abs_hf / anzahl_wuerfe)) +
  geom_line() +
  geom_hline(yintercept = 1 / 2, colour = "blue",
             linetype = 2) +
  xlab("Anzahl Würfe") +
  ylab("relative Häufigkeit einer Geraden Anzahl von Kopf") +
  theme_light()
print(p) # die Grafik p kann so erneut verwendet werden
