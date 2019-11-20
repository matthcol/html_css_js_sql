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
	
}

$(window).on('load', function() {
	compterAfficherNbChampi()
	afficherChampis()
})