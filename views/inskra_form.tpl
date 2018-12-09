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
			<h2>Innskráning í forritunarklúbbinn</h2>
			
			<form class="col-1-3" method="post" action='/doinnskra'>
			  	<fieldset class="register-group">
			    
					<label>
						Notandanafn
						<input type="text" name="user" placeholder="Notandanafn" required size="30" maxlength="30">
					</label>
					<label>
						Lykilorð
						<input type="text" name="pass" placeholder="Lykilorð" required>
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
		
			

	</section>


</body>
</html>