--Estrai tutti i clienti
--SELECT numero_cliente, nome, cognome, anno_di_nascita, regione_di_residenza FROM clienti;

--Estrai tutti i clienti con nome mario
--select nome='Mario' from clienti

--Estrai il nome e il cognome dei clienti nati nel 1982
--select nome, cognome  from clienti WHERE EXTRACT(YEAR FROM anno_di_nascita) = 1982;

--Estrai numero fattura con iva al20%
--select numero_fattura from fatture where iva=20;
--SELECT COUNT(*) FROM fatture WHERE iva=20

--Estrai prodotti attivati nel 2017 e che sono in produzione o in commercio
 --SELECT * from prodotti WHERE EXTRACT (YEAR FROM data_attivazione)=2017 AND (in_commercio = true OR in_produzione = true);

--Estrarre le fatture con importo inferiore a 1000 e i dati del cliente a loro collegati
--SELECT fatture.*, clienti.nome, clienti.cognome from fatture join clienti on fatture.id_cliente = clienti.numero_cliente
--where fatture.importo < 1000;

--Estrai elenco delle fatture con aggiunta nome del fornitore
--select fatture.numero_fattura, fatture.importo, fatture.iva, fatture.data_fattura, fornitori.denominazione
--from fatture join fornitori on fatture.numero_fornitore = fornitori.numero_fornitore;

--iva al 20% estrarre num di fatture per ogni anno
--select extract (year from data_fattura),
--count(*) from fatture where iva = 20 group by extract (year from data_fattura);

--numero e somma di fatture divisi per anno
--select extract(year from data_fattura), count(*), sum(importo) from fatture
--group by extract(year from data_fattura);

--EXTRA
--estrarre anni in cui ci sono piu di 2 fattore di tipologia "fatture ordinarie"
--select extract(year from data_fattura), count(*) from fatture where tipologia = 'fattura ordinaria'
--group by extract(year from data_fattura) having count(*)>2;

--totale delle fatture divise per residenza dei clienti
--select clienti.regione_di_residenza, sum(fatture.importo)
--from fatture join clienti on fatture.id_cliente = clienti.numero_cliente group by clienti.regione_di_residenza;

--estrarre clienti nati nell'80 con fatture superiori a 50 euro
--select count(*) from clienti join fatture on clienti.numero_cliente = fatture.id_cliente where extract
--(year from clienti.anno_di_nascita) = 1960 and fatture.importo > 50;


