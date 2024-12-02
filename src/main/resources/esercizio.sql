--Estrai tutti i prodotti
--SELECT numero_cliente, nome, cognome, anno_di_nascita, regione_di_residenza FROM clienti;

--Estrai tutti i clienti con nome mario
--select nome='Mario' from clienti

--Estrai il nome e il cognome dei clienti nati nel 1982
--select nome, cognome  from clienti WHERE EXTRACT(YEAR FROM anno_di_nascita) = 1982;

--Estrai numero fattura con ina al20%
--select numero_fattura from fatture where iva=20;

--Estrai prodotti attivati nel 2017 e che sono in produzione o in commercio
SELECT descrizione, in_produzione, in_commercio, from prodotti WHERE EXTRACT (YEAR FROM data_attivazione)=2017;




