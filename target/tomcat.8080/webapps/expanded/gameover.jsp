<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <jsp:include page="parts/head.html" />
        <title>Russian Roulette - Game Over</title>
    </head>
    <body class="bg-dark">
        <header>
            <div class="container-fluid text-center">
                <img src="images/game-over.png" alt="game over" class="img-fluid home-img" height="300">
            </div>
        </header>
        <main>
            <div class="container">
                <div class="d-flex flex-column text-center mx-auto pt-3 home-main">
                    <h1 class="text-warning m-3">${currentPlayer.getName()}</h1>
                    <p class="text-white m-0">tragically leaves the game</p>
                    <div class="d-flex mx-auto my-3">
                        <a class="btn btn-outline-warning px-5 mx-2" href="/russian-roulette/">New Game</a>
                    </div>
                </div>
            </div>
        </main>
        <jsp:include page="parts/footer.html" />
    </body>
</html>
