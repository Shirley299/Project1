<script>
  import { Router, Link, Route } from 'svelte-routing'
  import Home from './lib/Home.svelte'
  import Catalog from './lib/Catalog.svelte'
  import User from './lib/User.svelte'
  import About from './lib/About.svelte'
  import { HomeOutline, BookOutline, PersonOutline, ChatbubblesOutline } from 'svelte-ionicons'
  export let url = ''
  let classList = [
    'list active',
    'list',
    'list',
    'list',
  ]
  const click = (index) => {
    classList = classList.map((item, idx) => idx === index ? 'list active' : 'list')
  }
</script>

<main>
  <Router {url}>
    <nav class="navigation">
      <ul>
        {#each ['/project1/', '/project1/catalog', '/project1/user', '/project1/about'] as path, index}
          <li class={classList[index]}>
            <Link class="link" to={path} on:click={() => click(index)}>
              <span class="text">
                {#if index === 0}Home{/if}
                {#if index === 1}Catalog{/if}
                {#if index === 2}User{/if}
                {#if index === 3}About{/if}
              </span>
              <span class="icon">
                {#if index === 0}<HomeOutline />{/if}
                {#if index === 1}<BookOutline />{/if}
                {#if index === 2}<PersonOutline />{/if}
                {#if index === 3}<ChatbubblesOutline />{/if}
              </span>
            </Link>
          </li>
          {#if index === 3}<div class="indicator"></div>{/if}
        {/each}
      </ul>
    </nav>
    <div>
      <Route path="/project1/"><Home /></Route>
      <Route path="/project1/catalog"><Catalog /></Route>
      <Route path="/project1/user"><User /></Route>
      <Route path="/project1/about"><About /></Route>
    </div>
  </Router>
</main>

<style>
  @import 'nav.css';
</style>
