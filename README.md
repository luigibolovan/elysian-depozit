# Model depozit farmaceutic

Depozitul vinde medicamente farmaciilor (farmaciile sunt clientii depozitului).

*Farmaciile trimit cate o comanda depozitului, in aceasta comanda se afla mai multe linii, pe fiecare linie fiind un produs si cantitatea necesara din acest produs.* Produsele apartin unor
categorii (analgezice, anabolizante, vitamine, etc). Un produs poate apartine unor sau mai multor categorii.

Query-uri:
1. cate comenzi a plasat farmacia dona in August. suma totala, valoarea medie per comanda
2. cate comenzi de antibiotice a plasat farmacia Vlad in 2019
3. care e farmacia care a comandat cel mai mult in 2019 , ca valoare absoluta .
4. Scurt program PL/SQL care sa printeze urmatorul raport: Pentru fiecare produs cat s-a comandat de catre fiecare client.

**Trimiterea comenzilor de catre farmacii se face prin intermediul unui program java care se conecteaza la baza de date locala.
SID-ul, username-ul si parola sunt cerute la inceputul programului pentru conectare.**

Tools:
- IntelliJ IDEA
- Oracle SQL Developer
- Oracle database 11g

### Categorii produse:
- Preparate stomatologice: Olaflur;
                           Flourura de staniu;
                           Clorhexidina;
                           Miconazol;
                           Clotrimazol;
- Antidiabetice: Insulina aspart;
                 Glimidina;
                 Fenformina si sulfonamide;
                 Triglitazona;
- Vitamine: Multivitamine si fier;
            Tiamina;
            Acid ascorbic;
            Calciu;
            Biotina;
- Tonice:   Tonic
- Anabolice sistemice: Stanozol;
                       Afrin;
- Stimulante ale apetitului
- Preparate nazale: Aspirin Complex;
                   Nurofen;
                   Theraflu;
- Preparate pentru tratamentul tusei si racelii:  Aspirin Complex;
                                                 Nurofen;
                                                 Theraflu;
- Antihipertensive:  Esmolol;
                    Nicarpidina;
                    Hidroclortiazida;
- Diuretice:  Nicarpidina;
             Hidroclortiazida;
- Vasoprotectoare:  Alle gel;
                   Doxilek;
                   Doxium;
- Terapia cordului:   Adenosine;
                    Adrenalina Terapia;
- Emoliente si protectoare:  Glicerol;
                            Bepanthen;
                            Fenol;
- Antiseptice si dezinfectante:  Betadine;
                                Dettolmed;
- Produse oftalmologice:  Acetazolamida;
                         Allergodil;
- Antibiotice:  Amoxicilina;
                Ampicilina;
              

### Clienti:
- Fildas Tradin - Catena
- SIEPCOFAR - Farmacia Dona
- Farmexim - Help Net
- Sensiblu
- Ropharma Brasov
- Farmacia Vlad
