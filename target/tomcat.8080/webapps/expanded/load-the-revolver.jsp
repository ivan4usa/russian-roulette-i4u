<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <jsp:include page="parts/head.html" />
        <title>Russian Roulette - Load the Revolver</title>
    </head>
    <body class="bg-dark">
        <header>
            <div class="container-fluid text-center">
                <img src="images/revolver.png" alt="intro" class="img-fluid home-img" height="300">
            </div>
        </header>
        <main>
            <div class="container">
                <div class="d-flex flex-column text-center mx-auto pt-3 home-main">
                    <h2 class="text-warning mb-3">Load the revolver</h2>
                    <form action="/russian-roulette/shot" method="post">
                        <div class="load-block">
                            <div class="load-row">
                                <div class="bullet-1">
                                    <input type="radio" class="btn-check bullet-check" name="bullet"
                                        autocomplete="off" id="bullet-1" value="1">
                                    <label for="bullet-1" class="btn btn-outline-warning bullet">1</label>
                                </div>
                                <div class="bullet-2">
                                    <input type="radio" class="btn-check bullet-check" name="bullet"
                                        autocomplete="off" id="bullet-2" value="2">
                                    <label for="bullet-2" class="btn btn-outline-warning bullet">2</label>
                                </div>
                                <div class="bullet-3">
                                    <input type="radio" class="btn-check bullet-check" name="bullet"
                                        autocomplete="off" id="bullet-3" value="3">
                                    <label for="bullet-3" class="btn btn-outline-warning bullet">3</label>
                                </div>
                            </div>
                            <div class="load-row">
                                <div class="bullet-4">
                                    <input type="radio" class="btn-check bullet-check" name="bullet"
                                        autocomplete="off" id="bullet-4" value="4">
                                    <label for="bullet-4" class="btn btn-outline-warning bullet">4</label>
                                </div>
                                <div class="bullet-5">
                                    <input type="radio" class="btn-check bullet-check" name="bullet"
                                        autocomplete="off" id="bullet-5" value="5">
                                    <label for="bullet-5" class="btn btn-outline-warning bullet">5</label>
                                </div>
                                <div class="bullet-6">
                                    <input type="radio" class="btn-check bullet-check" name="bullet"
                                        autocomplete="off" id="bullet-6" value="6">
                                    <label for="bullet-6" class="btn btn-outline-warning bullet">6</label>
                                </div>
                            </div>
                        </div>
                        <div class="d-flex mx-auto my-3">
                            <input type="submit" class="btn btn-outline-warning px-5 mx-auto" value="Start">
                        </div>
                    </form>
                </div>
            </div>
        </main>
        <jsp:include page="parts/footer.html" />
    </body>
</html>
