<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- þvingar farsíma vafra til að birta gögn 1:1 og þá virka viðmið (breakpoints) í stílsíðum -->
	<meta charset="utf-8">
	<title>Lokaverkefni</title>

	<link rel="stylesheet" type="text/css" href="/static/css/normalize.css">
	<link rel="stylesheet" type="text/css" href="/static/css/grid2_1.css">
	<link rel="stylesheet" type="text/css" href="/static/css/form.css">	
</head> 
<body > 
    
		<h1>Lokaverkefni <i></i></h1>



	</header>
	<section class="content"> 
		<article class="midja">
			<h2>Skráning í forritunarklúbb</h2>
			
			<form class="col-1-3" method="post" action='/donyskra'>
			  <fieldset class="register-group">
			    
			<label>
				Notandanafn
				<input type="text" name="user" placeholder="Notandanafn" required size="30" maxlength="30">
			</label>
			<label>
				Lykilorð
				<input type="text" name="pass" placeholder="Lykilorð" required>
			</label>



			    <label>
			      Nafn
			      <input type="text" name="name" placeholder="Fullt nafn" required size="45">
			    </label>
			    
			    <label>
			      Heimilisfang
			      <input type="text" name="heimilisfang" placeholder="Heimilisfang" required size="45">
			    </label>
			    
			    <label>
			    Netfang
			    <input type="email" name="netfang"	required>
			    </label>
			    
			    <label> 
			   	Sími
				<input id="telNo" name="simi" type="tel" placeholder="xxxxxxx" required pattern="^(\+354 )?\d{3}[ -]?\d{4}$" />
				</label>

			    </fieldset>
			    <fieldset class="rc"> 
			    	<label>
			    		<br>
			    		<h3>Aldur</h3>
				    	<br>
				    	<input type="checkbox" name="Aldur_1">10 - 15 ára|
				    	<input type="checkbox" name="Aldur_2">16 - 20 ára|
				    	<input type="checkbox" name="Aldur_3">21 - 30 ára|
				    	<input type="checkbox" name="Aldur_4">31 og eldri|
					</label>


					<label>
			    		<br>
			    		<h3>Kyn</h3>
				    	<br>
				    	<input type="radio" name="karl" value="ja"  > 
				    	Karl | 
				    	<input type="radio" name="kona" value ="nei">Kona
					</label>

					<label>
			    		<br>
				    	<h3>Forritunarmál</h3>
				    	<br>
				    	<input type="checkbox" name="Pyth2" >Python |
				    	<input type="checkbox" name="Java2" >Javaskrift |
				    	<input type="checkbox" name="Gagn2" >Gagnasöfn |
				   	</label>
				</fieldset>	
				<fieldset class="register-group">			   
			  		<label>
			  			<button type="submit" name="submit" value="Skráning">Skráning</button>
			    		<button type="reset" name="Reset" value="Reset">Hreinsa</button>
			  		</label>
			  </fieldset>
			</form>

			
		</article>
		
			

		</aside>
	</section>


</body>
</html>