<script>
  import { Router, Link, Route } from 'svelte-routing'
  import { onMount } from 'svelte'
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
  onMount(() => {
    let pathName = window.location.pathname.split('/')
    pathName = pathName.filter(item => item !== '')
    if (pathName.length === 1 && pathName[0] === 'Project1') {
      classList = classList.map((item, idx) => idx === 0 ? 'list active' : 'list')
    }
    else if (pathName.length === 2 && pathName[1] === 'catalog') {
      classList = classList.map((item, idx) => idx === 1 ? 'list active' : 'list')
    }
    else if (pathName.length === 2 && pathName[1] === 'user') {
      classList = classList.map((item, idx) => idx === 2 ? 'list active' : 'list')
    }
    else if (pathName.length === 2 && pathName[1] === 'about') {
      classList = classList.map((item, idx) => idx === 3 ? 'list active' : 'list')
    }
  })
</script>

<main>
  <Router {url}>
    <nav class="navigation">
      <ul>
        {#each ['/Project1/', '/Project1/catalog', '/Project1/user', '/Project1/about'] as path, index}
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
      <Route path="/Project1/"><Home /></Route>
      <Route path="/Project1/catalog"><Catalog /></Route>
      <Route path="/Project1/user"><User /></Route>
      <Route path="/Project1/about"><About /></Route>
    </div>
  </Router>
</main>

<style>
  @import 'nav.css';
</style>
