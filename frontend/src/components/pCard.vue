<template>
    <div class="card-container zoom active">
        <img class="card-image" :src="imgSrc" alt="random">
        <div>
            <div class="card-title">{{title}}</div>
            <span class="body-truncated">{{body}}</span>
        </div>
    </div>

</template>

<script>
    export default {
        name: "Portfolio",
        props: {
            id: {type: Number},
            title: {type: String},
            body: {type: String},
            imgSrc: {type: String},
            link: {type: String},
        },
        data () {
            return {
                hover: false,
            }
        }
    }
</script>

<style scoped>
    .card-container {
        display: flex;
        flex-direction: column;
        border: 3px solid whitesmoke;
        max-width: 300px;
        max-height: 400px;
        padding: 10px 10px;
        overflow: hidden;
        border-radius: 5%;
    }
    .card-image {
        height: 200px;
        width: 100%;
        border-radius: 5%;
    }

    .card-title {
        margin-top: 1vh;
        margin-bottom: 1vh;
        font-size: 1.5rem;
    }

    .body-truncated {
        overflow : hidden;
        text-overflow: ellipsis;
        display: -webkit-box;
        -webkit-line-clamp: 5;
        -webkit-box-orient: vertical;
    }

    .active:hover {
        box-shadow: 0px 4px 8px 0px rgba(0, 0, 0, 0.5);
    }

    .zoom {
        transition: transform .2s; /* Animation */
    }

    .zoom:hover {
        background:white;
        z-index: 1000;
        transform: scale(1.2);
    }

</style>