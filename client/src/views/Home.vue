<template>
  <Suspense>
    <template #default>
      <Timeline />
    </template>
    <template #fallback>
      <Progress />
    </template>
  </Suspense>
</template>

<script lang="ts">
import { defineComponent } from 'vue'
import Timeline from '../components/Timeline.vue'
import Progress from '../components/Progress.vue'

export default defineComponent({
  components: { 
    Timeline,
    Progress
  },
  name: 'Home'
})
</script>
