<script setup lang="ts">
/* 

ライフサイクルの種類

https://v3.ja.vuejs.org/guide/composition-api-lifecycle-hooks.html

	onMounted
	onBeforeUpdate
	onUpdated
 	onBeforeUnmount
 	onUnmounted
	onErrorCaptured
	onRenderTracked
	onRenderTriggered
	onActivated
	onDeactivated

*/

import { CONTENT_WORDS } from "../constants/textStorage"
import { isDesktopWidth } from "../utils/screenSizeChecker"


const windowSizeTrigger = reactive<{ isDesktopWidth: boolean }>({
 isDesktopWidth: isDesktopWidth()
})


function desktopWidthTrigger(): void {
  windowSizeTrigger.isDesktopWidth = isDesktopWidth()
}

//  onMounted
onMounted(() =>{
   addEventListener("resize",desktopWidthTrigger)
})

// onBeforeUnmount
onBeforeUnmount(() =>{
removeEventListener("resize",desktopWidthTrigger)

})

</script>
<template>
  <header class="flex w-full h-[140px] bg-[#F5F0F0] drop-shadow-lg">
    
    <div
      class="
        inline-flex
        max-w-7xl
        justify-center
        max-w-screen-xl
        w-full
        mx-auto
        px-[30px]
        xl:px-[120px]
      
      "
    >


      <p class="self-center  text-[70px] mr-auto font-['Jomolhari'] font-[400]">
        {{ CONTENT_WORDS.header.title }}
      </p>


  <!-- Desktop -->
  <div v-if="windowSizeTrigger.isDesktopWidth" class="flex gap-x-[116px]">
      <div class="inline-flex gap-x-[58px] text-[45px] self-center font-['Jomolhari'] font-light" > 
      <p>SHOPS</p>
      <p>PRODUCTS</p>
      
      </div>
      <div class="inline-flex gap-x-[58px]">
      <div class="self-center">
        <img class="" src="/src/assets/person.png" />
      </div>
  <div class="self-center">
    <img class="" src="/src/assets/shoppingCart.png" />
    </div>
    </div>
</div>

  <!-- Mobile -->
  <div v-else class="flex gap-x-[18px] ">
        <div class="self-center">
          <img class="" src="/src/assets/shoppingCart.png" />
        </div>

        <!-- ハンバーガーメニュー -->
        <div class="self-center">
          <img class="" src="/src/assets/menuBar.png" />
        </div>
<div class=" bg-[#D9D9D9] h-[926px] w-[381px]">
    <div>
    <img class="bg-white ml-auto " src="/src/assets/close.png" />
    </div>
    <div class="flex  mt-[34px] font-['InriaSerif']">
    <div class="inline-flex mb-5">
    <img class="" src="/src/assets/person.png" />
    <p class="ml-2.5 self-center text-[30px]">LOGIN</p>
    </div>
    <div class="inline-flex mt-5">
    <img src="/src/assets/product.png" />
    <p class="ml-2.5 self-center text-[30px]">PRODUCTS</p>
    </div>
    </div>
</div>

  </div>
  </div>

  </header>


</template>


<script lang="ts">
import { defineComponent, onBeforeUnmount, onMounted, reactive } from "vue"

export default defineComponent({
  name: "makeupMoonHeader",
  components: {},
});
</script>



function isDesktopWidth(): boolean {
  throw new Error("Function not implemented.")
}
