/* 1.Encuentre el n�mero total de facturas (invoices) de cada cliente junto con el nombre completo,
la ciudad y el correo electr�nico de cada uno. Despu�s de ejecutar la consulta descrita anteriormente,
�cu�l es la direcci�n de correo electr�nico de la quinta persona, Franti�ek Wichterlov�?
*/

use Chinook
select C.firstname-
, C.lastname
, C.city
, C.email
,COUNT (i.invoiceid) as total_invoices
from Customer as c
left join Invoice as i on C.CustomerId = i.CustomerId
group by   C.FirstName, C.lastname, C.city, C.email
;
/*
2.Recupere el nombre de la pista, el �lbum, el ID del artista (artistID) y el ID de la pista (trackID) para todos los �lbumes. 
�Cu�l es el t�tulo de la canci�n con trackID 12 del �lbum "For Those About to Rock We Salute You"?
*/


select a.title as album_title
--, a.artistid
, a.ArtistId
, t.TrackId
, t.Name as track_name
from Album as a
left join Track as t on a.AlbumId = T.AlbumId
left join Artist as ar on a.ArtistId = ar.Artistid
where a.title = 'For Those About to Rock We Salute You' and t.TrackId = 12
;