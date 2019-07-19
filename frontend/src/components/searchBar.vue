<template>
    <div class="container">
        <div class="search-box">
            <input type="text" />
            <span></span>
        </div>
    </div>
</template>

<script>
    export default {
        name: "searchBar",
        methods: {

        }
    }
</script>

<style lang="scss" scoped>
    $white: #FFFFFF;
    $light: #ECF5FF;
    $dark: #000D24;
    $gray: #8696A3;
    $blue: #00B4FF;

    .container {
        position: absolute;
        left: 50%;
        top: 10%;
        transform: translate(-50%);
    }

    .search-box {
        input[type="text"] {
            border: none;
            background: none;
            z-index: 1;
            width: 25px;
            height: 25px;
            transition: all ease-in-out 0.3s;
            color: transparent;
            font-size: .75rem;
            line-height:25px;
            &:hover {
                cursor: pointer;
                &:focus {
                    cursor: text;
                }
                + span {
                    /*background: transparent;*/
                    border-color: lighten($gray, 29%);

                    &::before {
                        background: lighten($gray, 29%);
                    }

                }
            }
            &:focus {
                width: 300px;
                padding: 1px 12px;
                text-indent: 3px;
                outline: none;
                color: $light;
                background: none;
                color: $dark;

                + span {
                    width: 300px;

                    &::before {
                        width:2px;
                        opacity: 0;
                        transition: all .25s ease-in;
                    }
                }
            }
            + span {
                z-index: -1;
                position: absolute;
                border: 2px solid $gray;
                top: 0;
                width: 25px;
                height: 25px;
                transition: all .25s ease-in .25s;
                border-radius: 25px;
                left: 0;

                &::before {
                    transition: all .25s ease-in .5s;
                    transform-origin: left top;
                    content: '';
                    position: absolute;
                    width: 16px;
                    height: 3px;
                    border-radius: 5px;
                    background: $gray;
                    transform: rotate(45deg) translate(31px, -1px);
                }
            }
        }
    }
</style>