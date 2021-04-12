<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <jsp:include page="parts/head.html" />
        <title>Russian Roulette - Shot</title>
    </head>
    <body class="bg-dark">
        <header>
            <div class="container-fluid text-center py-3">
                <img src="${currentPlayer.getImage()}" alt="player"
                    class="img-fluid border border-warning border-5 rounded-circle home-img" height="300">
            </div>
        </header>
        <main>
            <div class="container">
                <div class="d-flex flex-column text-center mx-auto pt-3 home-main">
                    <h2 class="text-warning">${currentPlayer.getName()},</h2>
                    <p class="text-white m-0">now it's your time to shot! Don't panic!</p>
                    <div class="d-flex mx-auto my-3">
                        <form action="/try" method="post">
                            <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                	 viewBox="0 0 512 512" class="svg-bullet" xml:space="preserve">
                                <rect x="47.67" y="184.847" style="fill:#FF9A00;" width="77.857" height="141.67"/>
                                <rect x="47.67" y="255.672" style="fill:#FF8900;" width="77.857" height="70.835"/>
                                <rect x="95.521" y="171.684" style="fill:#FFB74D;" width="249.814" height="168.636"/>
                                	<rect y="171.684" style="fill:#FFB74D;" width="71.848" height="168.636"/>


                                	<rect y="255.672" style="fill:#FFA91E;" width="71.848" height="84.638"/>
                                	<rect x="95.521" y="255.672" style="fill:#FFA91E;" width="249.814" height="84.638"/>
                                <path style="fill:#FF9A00;" d="M512,255.998l-6.431,8.832c-5.521,7.572-11.783,14.743-18.744,21.465
                                	c-6.961,6.711-14.603,12.973-22.905,18.744c-33.217,23.075-72.726,35.278-114.255,35.278h-34.337V171.679h34.337
                                	c41.529,0,81.037,12.203,114.255,35.278c16.594,11.532,30.607,25.055,41.649,40.209l6.201,8.512L512,255.998z"/>
                                <path style="fill:#FF8900;" d="M512,255.998l-6.431,8.832c-5.521,7.572-11.783,14.743-18.744,21.465
                                	c-6.961,6.711-14.603,12.973-22.905,18.744c-33.217,23.075-72.726,35.278-114.255,35.278h-34.337v-84.638H511.77L512,255.998z"/>
                            </svg>
                            <input type="submit" class="btn btn-outline-warning px-5 mx-2" value="Try">
                        </form>
                    </div>
                </div>
            </div>
        </main>
        <jsp:include page="parts/footer.html" />
    </body>
</html>
