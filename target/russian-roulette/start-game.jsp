<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <jsp:include page="parts/head.html" />
        <title>Russian Roulette - Start Game</title>
    </head>
    <body class="bg-dark">
        <header>
            <div class="container-fluid text-center">
                <div class="row py-3">
                    <div class="col-4 col-md-2 d-flex flex-column">
                        <img src="images/character-01.png" alt="character 1"
                            class="img-fluid border border-warning border-5 rounded-circle">
                        <p class="text-white mx-auto my-2">Evgeny</p>
                    </div>
                    <div class="col-4 col-md-2 d-flex flex-column">
                        <img src="images/character-02.png" alt="character 1"
                            class="img-fluid border border-warning border-5 rounded-circle">
                        <p class="text-white mx-auto my-2">Boris</p>
                    </div>
                    <div class="col-4 col-md-2 d-flex flex-column">
                        <img src="images/character-03.png" alt="character 1"
                            class="img-fluid border border-warning border-5 rounded-circle">
                        <p class="text-white mx-auto my-2">Natalya</p>
                    </div>
                    <div class="col-4 col-md-2 d-flex flex-column">
                        <img src="images/character-04.png" alt="character 1"
                            class="img-fluid border border-warning border-5 rounded-circle">
                        <p class="text-white mx-auto my-2">Alexey</p>
                    </div>
                    <div class="col-4 col-md-2 d-flex flex-column">
                        <img src="images/character-05.png" alt="character 1"
                            class="img-fluid border border-warning border-5 rounded-circle">
                        <p class="text-white mx-auto my-2">Dmitry</p>
                    </div>
                    <div class="col-4 col-md-2 d-flex flex-column">
                        <img src="images/character-06.png" alt="character 1"
                            class="img-fluid border border-warning border-5 rounded-circle">
                        <p class="text-white mx-auto my-2">Pavel</p>
                    </div>
                </div>

            </div>
        </header>
        <main>
            <div class="container">
                <div class="d-flex flex-column text-center mx-auto pt-3 home-main">
                    <h2 class="text-warning mb-5">Choose your characters</h2>
                    <form action="/russian-roulette/loading" method="post">
                        <div class="mb-3 row">
                            <label for="player1" class="col-12 col-sm-2 col-form-label text-white">Player 1: </label>
                            <div class="col-8 col-sm-7">
                                <select class="form-select" aria-label="player one character" name="player1" id="player1">
                                    <option value="0">Choose a name</option>
                                    <option value="Evgeny">Evgeny</option>
                                    <option value="Boris">Boris</option>
                                    <option value="Natalya">Natalya</option>
                                    <option value="Alexey">Alexey</option>
                                    <option value="Dmitry">Dmitry</option>
                                    <option value="Pavel">Pavel</option>
                                </select>
                            </div>
                            <div class="col-4 col-sm-3">
                                <input type="radio" class="btn-check" name="first" autocomplete="off" id="first1" value="1">
                                <label for="first1" class="btn btn-outline-warning">Me First</label>
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="player2" class="col-12 col-sm-2 col-form-label text-white">Player 2: </label>
                            <div class="col-8 col-sm-7">
                                <select class="form-select" aria-label="player one character" name="player2" id="player2">
                                    <option value="0">Choose a name</option>
                                    <option value="Evgeny">Evgeny</option>
                                    <option value="Boris">Boris</option>
                                    <option value="Natalya">Natalya</option>
                                    <option value="Alexey">Alexey</option>
                                    <option value="Dmitry">Dmitry</option>
                                    <option value="Pavel">Pavel</option>
                                </select>
                            </div>
                            <div class="col-4 col-sm-3">
                                <input type="radio" class="btn-check" name="first" autocomplete="off" id="first2" value="2">
                                <label for="first2" class="btn btn-outline-warning">Me First</label>
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="player3" class="col-12 col-sm-2 col-form-label text-white">Player 3: </label>
                            <div class="col-8 col-sm-7">
                                <select class="form-select" aria-label="player one character" name="player3" id="player3">
                                    <option value="0">Choose a name</option>
                                    <option value="Evgeny">Evgeny</option>
                                    <option value="Boris">Boris</option>
                                    <option value="Natalya">Natalya</option>
                                    <option value="Alexey">Alexey</option>
                                    <option value="Dmitry">Dmitry</option>
                                    <option value="Pavel">Pavel</option>
                                </select>
                            </div>
                            <div class="col-4 col-sm-3">
                                <input type="radio" class="btn-check" name="first" autocomplete="off" id="first3" value="3">
                                <label for="first3" class="btn btn-outline-warning">Me First</label>
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="player4" class="col-12 col-sm-2 col-form-label text-white">Player 4: </label>
                            <div class="col-8 col-sm-7">
                                <select class="form-select" aria-label="player one character" name="player4" id="player4">
                                    <option value="0">Choose a name</option>
                                    <option value="Evgeny">Evgeny</option>
                                    <option value="Boris">Boris</option>
                                    <option value="Natalya">Natalya</option>
                                    <option value="Alexey">Alexey</option>
                                    <option value="Dmitry">Dmitry</option>
                                    <option value="Pavel">Pavel</option>
                                </select>
                            </div>
                            <div class="col-4 col-sm-3">
                                <input type="radio" class="btn-check" name="first" autocomplete="off" id="first4" value="4">
                                <label for="first4" class="btn btn-outline-warning">Me First</label>
                            </div>
                        </div>
                        <div class="d-flex mx-auto my-3">
                            <input type="submit" class="btn btn-outline-warning px-5 mx-auto" value="Next">
                        </div>
                    </form>

                </div>
            </div>
        </main>
        <jsp:include page="parts/footer.html" />
    </body>
</html>
