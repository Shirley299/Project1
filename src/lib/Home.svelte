<script>
    import Logo from '../assets/logo.png'
</script>

<div class="home-page">
    <div>
        <img src={Logo} class="logo" alt="Website Logo" />
    </div>
    <h1>Chinese Cuisine</h1>
    <h2>中国 美食</h2>
</div>

<style>
    .logo {
        height: 16em;
        padding: 1.5em;
        border-radius: 50%;
        will-change: filter;
        transition: filter 300ms;
    }
    .logo:hover {
        filter: drop-shadow(0 0 6em #bbb6ac);
    }
</style>
