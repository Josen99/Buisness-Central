report 50190 MyReport
{
    UsageCategory = ReportsAndAnalysis; //permette di trovarlo nella barra ricerca / vede se è localizzato nel gruppo specifico
    ApplicationArea = All;
    DefaultLayout = RDLC;
    Caption = 'Report';
    RDLCLayout = './Src/Layouts/film.rdl';
    UseRequestPage = false;

    dataset
    {
        dataitem("Film Josen"; "Film Josen")
        {
            column(Attori_FilmJosen; Attori)
            {
            }
            column(DataUscita_FilmJosen; "Data Uscita")
            {
            }
            column(Genere_FilmJosen; Genere)
            {
            }
            column(Nazione_FilmJosen; Nazione)
            {
            }
            column(No_FilmJosen; "No.")
            {
            }
            column(Numeroserie_FilmJosen; "Numero serie")
            {
            }
            column(Regista_FilmJosen; Regista)
            {
            }
            column(titolo_FilmJosen; titolo)
            {
            }
            dataitem("Film e Attori Josen"; "Film e Attori Josen")
            {
                DataItemLink = "Film" = field("No.");
                column(CognomeAttore_FilmeAttoriJosen; "Cognome Attore")
                {
                }
                column(NomeAttore_FilmeAttoriJosen; "Nome Attore")
                {
                }
            }
        }


    }

}