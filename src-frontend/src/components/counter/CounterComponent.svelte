<script lang="ts">
  let count: number = $state(0);
  const increment = () => {
    count += 1;
  };
</script>

<button
  class="!bg-gray-100 !px-2 !py-2 !rounded no-underline !text-black"
  onclick={increment}
>
  count is {count}
</button>
