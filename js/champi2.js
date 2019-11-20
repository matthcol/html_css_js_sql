console.log("Coucou")

// chargement des données (simulé)
champis = [
	{nom:'Cèpe', comestible:true, taux: 0.8},
	{nom:'Trompette de la mort', comestible:true, taux: 0.4},
	{nom:'Amanite tue mouche', comestible:false, taux: 0.5}
]

function compterAfficherNbChampi() {
	let nb = champis.length
	document.getElementById('nb').innerHTML = nb
}

function afficherChampis() {
	for (let champi of champis) {
		if (champi.comestible) {
			$(".comestible").append(`<li>${champi.nom}</li>`)
		} else {
			$(".noncomestible").append(`<li>${champi.nom}</li>`)
		}
	}
}

function ajouterChampi() {
	console.log("ajout champi")
	let champi = {
	    nom: $("#nom").val(),
	    comestible: $("comestible_oui").is(":checked"),
	    taux: parseFloat($("#vitamine").val())
	}
	champis.push(champi)
}

$(window).on('load', function() {
	compterAfficherNbChampi()
	afficherChampis()
	$("#champiForm").submit(function(event) {
		event.preventDefault()
		ajouterChampi()
	})
})