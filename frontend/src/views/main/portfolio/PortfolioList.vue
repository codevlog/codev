<template>
    <div>
        <div class="search-wrapper">
            <div class="search">
                <input type="text" class="searchTerm" placeholder="What are you looking for?">
                <button type="submit" class="searchButton">
                </button>
            </div>
        </div>
        <div class="portfolio-container">
            <div v-for="i in portfolios.length" :key="i.id">
                <Portfolio :title="portfolios[i - 1].title" :body="portfolios[i - 1].body"
                           :imgSrc="portfolios[i - 1].imgSrc"></Portfolio>
            </div>

        </div>

    </div>
</template>

<script>
    import Portfolio from '../../../components/Portfolio'

    export default {
        name: '',
        props: {
            propName: {
                type: String,
                default: ''
            }
        },
        components: {
            // eslint-disable-next-line vue/no-unused-components
            Portfolio,
        },
        data() {
            return {
                portfolios: [
                    {
                        id: 1,
                        title: 'Title1',
                        body: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                        imgSrc: 'https://picsum.photos/400/400'
                    },
                    {
                        id: 2,
                        title: 'Title2',
                        body: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                        imgSrc: 'https://picsum.photos/400/400'
                    },
                    {
                        id: 3,
                        title: 'Title3',
                        body: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.f',
                        imgSrc: 'https://picsum.photos/400/400'
                    },
                    {
                        id: 4,
                        title: 'Title4',
                        body: 'lorem ipsLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.um slsjdnflasjdfnsjkdfnlkajflasdafsdfkasndjklafsdnljkflasndfjklnasdjklfnlasdfjlasdf',
                        imgSrc: 'https://picsum.photos/400/400'
                    },
                    {
                        id: 5,
                        title: 'Title5',
                        body: 'lorem ipLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.sum slsjdnflasjdfnsjkdfnlkajflasdafsdfkasndjklafsdnljkflasndfjklnasdjklfnlasdfjlasdf',
                        imgSrc: 'https://picsum.photos/400/400'
                    },
                ]
            }
        },
        computed: {},
        created() {
        },
        mounted() {
        },
        methods: {},
    }
</script>

<style lang="scss" scoped>
    .portfolio-container {
        display: grid;
        grid-template-rows: repeat(4, 400px [col-start]);
        grid-template-rows: repeat(4, 400px [col-start]);
        grid-template-columns: repeat(4, 300px [row-start]);
        grid-gap: 10px 10px;
        justify-content: space-evenly;
        /*justify-items: center;*/
        padding-top: 50px;
    }

    @media (max-width: 978px) {
        .portfolio-container {
            display: grid;
            grid-template-rows: repeat(3, 400px [col-start]);
            grid-template-columns: repeat(3, 300px [row-start]);
            grid-gap: 10px 10px;
            justify-content: space-evenly;
            /*justify-items: center;*/
            padding-top: 50px;
        }
    }

    @media (max-width: 768px) {
        .portfolio-container {
            display: grid;
            grid-template-rows: repeat(2, 400px [col-start]);
            grid-template-columns: repeat(2, 300px [row-start]);
            grid-gap: 10px 10px;
            justify-content: space-evenly;
            /*justify-items: center;*/
            padding-top: 50px;
        }
    }

    .search-wrapper {
        display: flex;
        height: 100px;
        justify-content: center;
    }

    .search {
        width: 50%;
        position: relative;
        display: flex;
        align-items: center;
    }

    .searchTerm {
        width: 100%;
        border: 3px solid #00B4CC;
        border-right: none;
        padding: 5px;
        height: 20px;
        border-radius: 5px 0 0 5px;
        outline: none;
        color: #9DBFAF;
    }

    .searchTerm:focus {
        color: #00B4CC;
    }

    .searchButton {
        width: 40px;
        height: 36px;
        border: 1px solid #00B4CC;
        background: #00B4CC;
        text-align: center;
        color: #fff;
        border-radius: 0 5px 5px 0;
        cursor: pointer;
        font-size: 20px;
    }
</style>