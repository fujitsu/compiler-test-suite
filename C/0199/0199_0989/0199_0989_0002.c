#include <stdlib.h>
extern signed char v3 (signed short, signed short, unsigned int);
extern signed char (*v4) (signed short, signed short, unsigned int);
extern signed short v5 (signed int, signed int);
extern signed short (*v6) (signed int, signed int);
extern void v7 (signed int);
extern void (*v8) (signed int);
extern unsigned short v9 (signed int);
extern unsigned short (*v10) (signed int);
signed int v11 (signed short, signed int);
signed int (*v12) (signed short, signed int) = v11;
extern signed short v13 (unsigned short, unsigned int, unsigned int);
extern signed short (*v14) (unsigned short, unsigned int, unsigned int);
extern unsigned int v15 (signed short, signed short, unsigned char);
extern unsigned int (*v16) (signed short, signed short, unsigned char);
signed short v17 (signed short, unsigned char, unsigned char, signed char);
signed short (*v18) (signed short, unsigned char, unsigned char, signed char) = v17;
extern unsigned int v19 (unsigned short);
extern unsigned int (*v20) (unsigned short);
extern signed int v21 (unsigned int, unsigned short, signed int);
extern signed int (*v22) (unsigned int, unsigned short, signed int);
extern unsigned char v23 (unsigned int, signed short, signed char, unsigned char);
extern unsigned char (*v24) (unsigned int, signed short, signed char, unsigned char);
unsigned char v25 (unsigned char, unsigned short, unsigned short);
unsigned char (*v26) (unsigned char, unsigned short, unsigned short) = v25;
extern unsigned char v27 (unsigned char, signed short, unsigned short, signed short);
extern unsigned char (*v28) (unsigned char, signed short, unsigned short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v97 = 3;
signed short v96 = -4;
unsigned short v95 = 0;

unsigned char v25 (unsigned char v98, unsigned short v99, unsigned short v100)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
signed int v103 = 3;
signed short v102 = 2;
unsigned int v101 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (signed short v104, unsigned char v105, unsigned char v106, signed char v107)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
unsigned char v110 = 3;
unsigned int v109 = 0U;
unsigned char v108 = 5;
trace++;
switch (trace)
{
case 6: 
return -4;
default: abort ();
}
}
}
}

signed int v11 (signed short v111, signed int v112)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
signed char v115 = 0;
unsigned char v114 = 3;
signed char v113 = 3;
trace++;
switch (trace)
{
case 3: 
return -2;
default: abort ();
}
}
}
}
