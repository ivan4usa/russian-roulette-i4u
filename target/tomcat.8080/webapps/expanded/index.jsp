<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <jsp:include page="parts/head.html" />
        <title>Russian Roulette - Game</title>
    </head>
    <body class="bg-dark">
        <header>
            <div class="container-fluid text-center">
                <img src="images/intro.png" alt="intro" class="img-fluid home-img" height="300">
            </div>
        </header>
        <main>
            <div class="container">
                <div class="d-flex flex-column text-center mx-auto pt-3 home-main">
                    <h1 class="text-warning m-3">Russian Roulette</h1>
                    <p class="text-white m-0">Are you 18+?</p>
                    <div class="d-flex mx-auto my-3">
                        <a class="btn btn-outline-warning px-5 mx-2" href="/russian-roulette/start-game.jsp">Yes</a>
                        <a class="btn btn-outline-warning px-5 mx-2" href="/russian-roulette/exit.jsp">No</a>
                    </div>
                </div>
            </div>
        </main>
        <jsp:include page="parts/footer.html" />
    </body>
</html>
