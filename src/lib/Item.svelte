<script>
  export let name = ''
  export let intro = ''
  export let img = ''
  export let caption = ''
</script>

<div class="item-page">
  <h2>{name}</h2>
  <br>
  <p>{intro}</p>
  <br>
  <figure>
    <img class="item-pic" src="{img}" alt="{name} picture">
    <figcaption>{caption}</figcaption>
  </figure>
</div>

<style>
  .item-pic {
    width: 460px;
  }
</style>
