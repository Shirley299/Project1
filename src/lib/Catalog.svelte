<script>
  import Item from './Item.svelte'
  import Foods from '../data/foods.json'
  let selectedItem = Foods[0]
  const selectItem = (item) => {
    selectedItem = item;
  }
</script>

<div class="catalog-page">
  <div class="catalog-list">
    <ul>
      {#each Foods as item (item.name)}
        <li>
          <button class="catalog-button" on:click={() => selectItem(item)}>
            {item.name}
          </button>
        </li>
      {/each}
    </ul>
  </div>
  <div class="item">
    <Item
        name="{selectedItem.name}"
        intro="{selectedItem.intro}"
        img="{selectedItem.img}"
        caption="{selectedItem.caption}"
    />
  </div>
</div>

<style>
.catalog-page {
  width: 800px;
  display: flex;
}
ul {
  list-style-type: none;
}
.catalog-list {
  width: 20%;
  padding: 5px;
}
.item {
  width: 80%;
  padding: 10px;
}
.catalog-button {
  width: 100%;
  margin: 2px;
}
</style>
