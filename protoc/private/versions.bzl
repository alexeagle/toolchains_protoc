"""Mirrored integrity hashes for the pre-built protoc binaries distributed by the protobuf project.

See ./mirror_protoc_release.sh for automation to update this file.
See .github/workflows/mirror_protoc_release.yml for automation that runs the script daily.
"""

# Keys are chosen to match the filenames published on protocolbuffers/protobuf releases
PROTOC_PLATFORMS = {
    "linux-aarch_64": {
        "compatible_with": [
            "@platforms//os:linux",
            "@platforms//cpu:aarch64",
        ],
    },
    "linux-ppcle_64": {
        "compatible_with": [
            "@platforms//os:linux",
            "@platforms//cpu:ppc64le",
        ],
    },
    "linux-s390_64": {
        "compatible_with": [
            "@platforms//os:linux",
            "@platforms//cpu:s390x",
        ],
    },
    "linux-x86_64": {
        "compatible_with": [
            "@platforms//os:linux",
            "@platforms//cpu:x86_64",
        ],
    },
    "osx-aarch_64": {
        "compatible_with": [
            "@platforms//os:macos",
            "@platforms//cpu:aarch64",
        ],
    },
    "osx-x86_64": {
        "compatible_with": [
            "@platforms//os:macos",
            "@platforms//cpu:x86_64",
        ],
    },
    "win64": {
        "compatible_with": [
            "@platforms//os:windows",
            "@platforms//cpu:x86_64",
        ],
    },
}

PROTOC_VERSIONS = {
    "v26.1": {
        "protoc-26.1-linux-aarch_64.zip": "sha384-RB9HKYLwwXc97tfg4sEbX99KOFY9AjGMt/BlDlF9Mqcqeu2nLXTHY8BU8PAF9oXq",
        "protoc-26.1-linux-ppcle_64.zip": "sha384-sWCKvKPWjqMr+Apjqs26c+YaBRBasZXhffRBP8InEBAZu9aN9ONKy+sz2ZgI2TUP",
        "protoc-26.1-linux-s390_64.zip": "sha384-nuJaZ0pZ49sy44FdpulBQaXmVrDz4o1SR8Eo3up4v2Vq8dNo/GIWHB8NJ1Z0K3Ys",
        "protoc-26.1-linux-x86_32.zip": "sha384-YDOSdXa+FcThGlMNRiS/zyPi0LuV+kkCED+SjK/HXF7SSbuTUYyxzOukzIt9kC1K",
        "protoc-26.1-linux-x86_64.zip": "sha384-WBQND1R3t1kmU2/SrtBIACJJNA8EmTvN3IUlCrVkaXMzKLQskCz8G1tsfX7vBbmb",
        "protoc-26.1-osx-aarch_64.zip": "sha384-hEJnpGeXnHyZbEKjwXIXNGKg6Lk4tFGe7jNifWGsueflsqFTPThd2h8coMNCp6mN",
        "protoc-26.1-osx-universal_binary.zip": "sha384-EwveWUW1MLj8yGY5bPGQLei0kjUS2dPNwJHMD/aev9CjP3CY2atblsctb7VdWJfp",
        "protoc-26.1-osx-x86_64.zip": "sha384-AjlSRMtqFkeNKU8zJLkMYqQi+gG3OOvaWW34fJ0DC5kYFuUYrDnv6d6O8AaKkg9e",
        "protoc-26.1-win32.zip": "sha384-AqsGLVqSHQIc/m24a2FIJpDGM4vLHTD3Mbsi+EUVLNw28auHpyzUcMp85jnVQPWV",
        "protoc-26.1-win64.zip": "sha384-1eCfSPc4xZBAAjREv2sOSgwiOYoww+PsEmsu7Lx9kP0u4K+S/HYlxWJR3BjeezeG",
    },
    "v26.0": {
        "protoc-26.0-linux-aarch_64.zip": "sha384-EKzVVD/u2NrKxUnqVheGdZX0RX9MHdeQyvXFNKsPy4QyJdRSaZhtdzUprWocYfkx",
        "protoc-26.0-linux-ppcle_64.zip": "sha384-HiOh6tmufO8fwqY4luOjTlMNsr70XB4QftLc8rCaJ5Yr/1R4h7BummC95eN2q6ZK",
        "protoc-26.0-linux-s390_64.zip": "sha384-07wd7UOGkF2d8VVkx4xqN3PWY1yoQKCq0FZTVf6dWgN2pTcLYQxacCY4G0uXtXVi",
        "protoc-26.0-linux-x86_32.zip": "sha384-HToF2m1cR2bS0nFkg8m9mObCFoT/51UJSt6XzzVarJoPqWDa+hcX8xi7mdrRr83Q",
        "protoc-26.0-linux-x86_64.zip": "sha384-p/hPsHQe40z3QokS3NEV/kuhQqpBl0iuSXhn4RHL8MLeyYEtZdbHLLUmJTFuoqhL",
        "protoc-26.0-osx-aarch_64.zip": "sha384-is0QxOPAVZwnznnJXA4SiVGKu1YQhY8G5wDdEa3lfnmHt5EZaTE2au5cPHlTMwYi",
        "protoc-26.0-osx-universal_binary.zip": "sha384-z/IOuXtnAu+4JQ5xz05GJA4gcK4U777GGDJaALJG/8dn3bTckOtsMcRCkxGPEMwy",
        "protoc-26.0-osx-x86_64.zip": "sha384-L3bImCCXhv4NfKPO5Ry3HNWWBxavi8ZytWESZiN6SlpMtkAnOpXMBXoZKTsCwW/h",
        "protoc-26.0-win32.zip": "sha384-zUcblmHJE1Z2w3Gu5DDKYgbJiyta5VfmSrQHKzgSueTcb2GjrI0Qbr7lt+HqG8cs",
        "protoc-26.0-win64.zip": "sha384-mSLw3GOXqEzPldPAv3fecK9Q29EvdHdrDodOJf+cCQXRxpMy6s26pJikBz50IgPF",
    },
    "v26.0-rc3": {
        "protoc-26.0-rc-3-linux-aarch_64.zip": "sha384-26j+lJ8JbQrtOiT71bvYSOaBVsE/nhqqudV3Ax/DzJL0dtqKhV0RQ5Oe+y4Ylw0E",
        "protoc-26.0-rc-3-linux-ppcle_64.zip": "sha384-1QxiTOdrXbB/tr1u0LpheREKIdPzOafq6IEx72V54DuKHhIyDUCkxzNXyC+pNfXQ",
        "protoc-26.0-rc-3-linux-s390_64.zip": "sha384-NYWag2bs+quuhzhYlhXcQaJHc1banME7D3UGGVjidZ3G9rEzp6wT1rrwyl9IndkI",
        "protoc-26.0-rc-3-linux-x86_32.zip": "sha384-FO9tf/Lg8gpln8lzUpZDGh0D1uGxK//DjmCuzaT8rKFLt5Am8Tx16VAvEmXAvFj3",
        "protoc-26.0-rc-3-linux-x86_64.zip": "sha384-NtInGn1e9vyypMxSFhfSGifK5uEgKe2N9CHdAr9Q7sEloTKVrxjE3hjDDgkkTSam",
        "protoc-26.0-rc-3-osx-aarch_64.zip": "sha384-UTqN2Wk/mUGOYz+zFb7LB9l/tD8gpU+L6EaJX2ZfgiagPCOZtkhA1cF952lkZ2Fr",
        "protoc-26.0-rc-3-osx-universal_binary.zip": "sha384-xMK8xRZtDJy3mplkAR4IJ7R8shM2WaMkYlRtGeJ/jLkpAJLuLVXbp4XUkFsaonQY",
        "protoc-26.0-rc-3-osx-x86_64.zip": "sha384-75RTRf96480dKHzhPpoQHcLLN7ngcCZDIJz1k7E77aKLe/Y8OUftST/a7Sm/sSjQ",
        "protoc-26.0-rc-3-win32.zip": "sha384-pi4UBm/miGxltC4159CiCBfd7E3W7EeMA8UaNbHbhGI+uAtFLPALrokfRwfSMkM3",
        "protoc-26.0-rc-3-win64.zip": "sha384-TLwRUg/VqBoaX7gXunN/6+66104prygpwFgJKZlC2e+0S5VlPRMpnQaVyzGDwEAV",
    },
    "v25.3": {
        "protoc-25.3-linux-aarch_64.zip": "sha384-jwCvnInYx9lD4bNy3EI/leVIVGqpyYkJ3qZSXXtIERcaBRIS1hAi4Tluu9Cy4eiy",
        "protoc-25.3-linux-ppcle_64.zip": "sha384-aLa68jnCzwO7pS0ler84UxwzaL7srl+9fFZuR3ykh4FJIDJW/jCQGTeuos8VfWcI",
        "protoc-25.3-linux-s390_64.zip": "sha384-PrlMkT15A2RsI4QYbRgvxq/xsNV7i1jzMbIZkSHDUMyZPC2Txf1ydLrmsIdQ/NQP",
        "protoc-25.3-linux-x86_32.zip": "sha384-GeYiLamJeiA/5/JY1bE9JisEoQwy9T65ZwQHmfc6JFV2VkWbUkRHGJqt3BeCBtP/",
        "protoc-25.3-linux-x86_64.zip": "sha384-RJ5r9hcTEMpphUBr1LLyYhjTc6k4tGkqGOW/UOHqHCSTGyFKG2DD7hfZ0XHdrc7e",
        "protoc-25.3-osx-aarch_64.zip": "sha384-B2T/H3pEAm/tEnOLvMhTRae5zq5PCcPMzTjWspe+vjS/CmTxVxnlMH1XjxgibILi",
        "protoc-25.3-osx-universal_binary.zip": "sha384-mhajph4BOcfzO74CC5u5JJ/eQ/sY6/Js1sDBVTszZmmo0nxqHU065rnDkHM5yy9i",
        "protoc-25.3-osx-x86_64.zip": "sha384-AUt06iBAyAmj1bB9KVjilbCX3moW/RLLUwJK3XNLzM3JY9/jIcaY61Juf/gCON3A",
        "protoc-25.3-win32.zip": "sha384-PoVupdbxosMbZs//vJDkLXjTzY2pfF3vI3lJ9J+SoMqsv17r/kFEzH8brM64x0FS",
        "protoc-25.3-win64.zip": "sha384-Fe23g3o7lyfGIpl8YNK6zLecYvp1A7dRjOozoztLQPoIFYlKmETsjh5+p4USHrkL",
    },
    "v24.4": {
        "protoc-24.4-linux-aarch_64.zip": "sha384-1yUAFmmBLZ3LU/vJoLxBX/MWJeanKe7p9SYkVmqlWwghayQEzifO6zsZ65fbQrNZ",
        "protoc-24.4-linux-ppcle_64.zip": "sha384-vx5i4cMWTK4d0P7yCucDG5T8z9nk+Ypi85+nOTZNrONPSsBoDpmrsjTeErcAxTD6",
        "protoc-24.4-linux-s390_64.zip": "sha384-gXY/gbqiOqNOfnHh7Ae1CJDUeFQ+0ZdgJrjNoeZ0Q5dL5IrRiHIdD0D1nV8wo4d8",
        "protoc-24.4-linux-x86_32.zip": "sha384-7ssqfPe6uiKeT2d0WFAOoa8xHePYPWfOpYZrGRHlvj7U7CKO9CweqRCqiZ/ItLVg",
        "protoc-24.4-linux-x86_64.zip": "sha384-gpzw2FvYI08YGwr4zWVcNfNvEiy8UegP/oa5NyG7gejthfpyzXWtKAtT3fo5Zmct",
        "protoc-24.4-osx-aarch_64.zip": "sha384-OlqTHfI/D8J2R3r0Y9o7BQIrODGYNTPCveDyte0zhniECsgDddFSZHR1JxjjtUj0",
        "protoc-24.4-osx-universal_binary.zip": "sha384-cNqrP+ghI+h/Cvd/KBBlfmYiP/rfhdiBjXSJaDUchlJoAJnW6J72jG0W81PXTxpj",
        "protoc-24.4-osx-x86_64.zip": "sha384-rM42wIQ9S33LqbL7aTmUT4RIxZfv93GNrShlwj3RYFbAQ4iGJ4vtHOgPwv1QCovr",
        "protoc-24.4-win32.zip": "sha384-l9ruRjAjGgLYJAQ/r+2Rw7mcUDSvH5CqFZK422aNMbPKLzmjXxtfhK91JT9xl+cU",
        "protoc-24.4-win64.zip": "sha384-HR8U6fkwvpJvc5LlN7fdl6KgAM3BOtxJm0+HyyaT4EWtQIkdKlGW2kd7cQL56X3L",
    },
    "v23.4": {
        "protoc-23.4-linux-aarch_64.zip": "sha384-36L+9u6RetU65cpV+C1AtfPEMEvqwNarfCdBAy00ukdYT+xXSWeSYynGQxkIMCY8",
        "protoc-23.4-linux-ppcle_64.zip": "sha384-Y5y2wQn38Y0obtRe+wNoCspl7hdoExwgwqY4ObBxLEtPug5ZbLZxfrd1g9GbqJLE",
        "protoc-23.4-linux-s390_64.zip": "sha384-EWqVU90VXUX9IsMzZuM/eTcvQfg69WC+5oPfl5IZpAjoJehzJuLleHdPYO8b3Af6",
        "protoc-23.4-linux-x86_32.zip": "sha384-n0B9jivyQuUDHRKcPUjO4mbKTCikmkBFIzui9IG6L2pTzCoDAQYJ8lEX2zIQ95LT",
        "protoc-23.4-linux-x86_64.zip": "sha384-w9VyeEVgTWWlGcZvFG/N2HLWCIDQuIEnizkiiBijZgJK/B81dDUObvSo21VY+aE7",
        "protoc-23.4-osx-aarch_64.zip": "sha384-QOXoTVDlsf3GdN8MjGM7Yvp/rVhHVdYgxwHGPb5S+awfYQnGHYXMlL7L8CgdHVDL",
        "protoc-23.4-osx-universal_binary.zip": "sha384-Yp9SV5FlW0N37njfqAHFIhflb+eb8R7YQpw5nFiyN6s+u1sxHCw9ZCZh9ZzL9QCq",
        "protoc-23.4-osx-x86_64.zip": "sha384-c/SnXBOI72mK6XsVtXR15SzhMapFf/a3PGT1+aCAmtl5uiU04olZagu1BMziIxNR",
        "protoc-23.4-win32.zip": "sha384-1NB0mSSMTlp9CHO0QOre51hNrilVnO+JkLafquaowkcCRKgyZV3ZYK+ExLi+DJyX",
        "protoc-23.4-win64.zip": "sha384-w7UcenXNSkyH9tTOuYo67Ra2WUMkS/la5ftWAuoAmXy/Suj06fU5LHLCx2kQUgOD",
    },
    "v22.5": {
        "protoc-22.5-linux-aarch_64.zip": "sha384-4rBMpoB30Rjwti6ggmSo8WYz5xGE/LES2bospjd7blTS3Ygj2IAsJOCt6VmlRhLh",
        "protoc-22.5-linux-ppcle_64.zip": "sha384-ulV1n2lPtfD1qEFWXLdpJ5bGswCRmhk0NVYLNjRBUSAlO/O97mplvDYUpwX+8Kqj",
        "protoc-22.5-linux-s390_64.zip": "sha384-KzKLDSBMXwMQTHowWexDEEFkpD48jMOsoX7l3GMP4dVrgjSgaf6KIbMZ2/0mwJKr",
        "protoc-22.5-linux-x86_32.zip": "sha384-v79Zuw2ak98dSKXqDkzosiMnc3cwSteMuizgEJu7bC5oJvEYMlXHCz37XBIMmftg",
        "protoc-22.5-linux-x86_64.zip": "sha384-LvvYFW33r9C1mcCqnNJmt1EoMY2ToXU68CXKyz/+OyvvyIRmgAARLzwVBdIrpORx",
        "protoc-22.5-osx-aarch_64.zip": "sha384-bvD409mDuUb3qOLzx58r8SMBsbCTveC2co99WsR+5RX4Tm9IowNM/j3b2tuhx7jw",
        "protoc-22.5-osx-universal_binary.zip": "sha384-hDbjYyN52oiIf4j/rMlX2V4r1qagQsoH5Rxsa5S/k5EJDn0th+PHHc/wZVcRMEWd",
        "protoc-22.5-osx-x86_64.zip": "sha384-QIsuPiPcfEbLHj0opWR2aJwa/cZO8Zi0a7pXw7fNhLnzzOqGT9NwAGOz1MaDvLNy",
        "protoc-22.5-win32.zip": "sha384-zxwlshvYwIYCKAmOczZ3CmY0gMyfi0VUKz/5p0m4U0Illes0g7SAAnRGdpK3zpx0",
        "protoc-22.5-win64.zip": "sha384-0jn4kTJ9ueIYdsQo4gwQt0SwVrTF+ROZoyW0WE9f+GSXweLIvfRyxssdCo0Rp1RF",
    },
    "v21.7": {
        "protoc-21.7-linux-aarch_64.zip": "sha384-NECLy68qRTw4Yo8n6xUZTUbkil0FW5dGjkIUe95r2OOW9emMqMuwWz7p/C+nAfRF",
        "protoc-21.7-linux-ppcle_64.zip": "sha384-FCxc5RKUj24BialSjU/UV3ktTebVhhaRNSCPHapkwMBoL8TVuHqpKaHBSTARfNxl",
        "protoc-21.7-linux-s390_64.zip": "sha384-OmOg3AuMUA0D5DZmQlamiy48Yzt3IhwioJ3tezC6gAPZg79IYXJhUvc38d/Q7XD/",
        "protoc-21.7-linux-x86_32.zip": "sha384-4Z1xX+VE80cOwYGgCopv7GhBQYlvNp9VC78MxLirIoXpFH3TnP8Wy6Z/oCLVwro8",
        "protoc-21.7-linux-x86_64.zip": "sha384-ydJtP/R5m7V5l4E9UoAOfWElwty9PSxjWf2reiRMjT/pdA7xHcWU/nAQe6afEVxI",
        "protoc-21.7-osx-aarch_64.zip": "sha384-q+E9Xjojjb9f/dhbhXcE+f2ZIuDSmTo0YpRubTQfixzPNQK3C+1VLJzCUwWwU+2C",
        "protoc-21.7-osx-universal_binary.zip": "sha384-Rtwb9mDSFKipZV8lEGBfRvLxD7eG7N4hcFCCzgw1lukOPtY+h89b/OlKrYsEaHyS",
        "protoc-21.7-osx-x86_64.zip": "sha384-13SIOaU0KOzF10cqkVJ49eaYRip/9iSj98hcvmDjE7lsJfioqXVfWuVPdXwwtrTc",
        "protoc-21.7-win32.zip": "sha384-l8UV/UcgL3u18WNgTDxMS45ZDMfqnsAqRmnP9CPWpFw8wR31mgPI3Oaj+KxsMjva",
        "protoc-21.7-win64.zip": "sha384-NLDFO3FAsbFziXo+d3vXMnVwQ3CEyP1tVEwgl5CNR1QpPUF3jRr403PsqN4gblE3",
    },
}
