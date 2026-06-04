#include <stdlib.h>
extern signed int v1 (unsigned short, unsigned int, unsigned short);
extern signed int (*v2) (unsigned short, unsigned int, unsigned short);
signed int v3 (signed int);
signed int (*v4) (signed int) = v3;
extern unsigned int v5 (signed short, unsigned int);
extern unsigned int (*v6) (signed short, unsigned int);
signed int v7 (unsigned int);
signed int (*v8) (unsigned int) = v7;
extern void v9 (signed char, unsigned int, signed char);
extern void (*v10) (signed char, unsigned int, signed char);
extern unsigned short v11 (unsigned char);
extern unsigned short (*v12) (unsigned char);
extern unsigned int v13 (unsigned short, signed char);
extern unsigned int (*v14) (unsigned short, signed char);
signed char v15 (signed short, unsigned int, signed int, signed char);
signed char (*v16) (signed short, unsigned int, signed int, signed char) = v15;
extern void v17 (void);
extern void (*v18) (void);
extern unsigned char v19 (signed int, unsigned short, signed short);
extern unsigned char (*v20) (signed int, unsigned short, signed short);
extern signed char v21 (unsigned short);
extern signed char (*v22) (unsigned short);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern unsigned short v25 (signed int, unsigned int, signed int);
extern unsigned short (*v26) (signed int, unsigned int, signed int);
extern unsigned char v27 (signed int, signed short);
extern unsigned char (*v28) (signed int, signed short);
signed char v29 (unsigned int, unsigned char, signed char, unsigned int);
signed char (*v30) (unsigned int, unsigned char, signed char, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v94 = 4U;
signed int v93 = 0;
signed char v92 = -2;

signed char v29 (unsigned int v95, unsigned char v96, signed char v97, unsigned int v98)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
unsigned char v101 = 4;
unsigned short v100 = 1;
signed int v99 = -3;
trace++;
switch (trace)
{
case 3: 
return 2;
case 7: 
return v97;
default: abort ();
}
}
}
}

signed char v15 (signed short v102, unsigned int v103, signed int v104, signed char v105)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
unsigned char v108 = 1;
unsigned short v107 = 6;
unsigned short v106 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (unsigned int v109)
{
history[history_index++] = (int)v109;
{
for (;;) {
signed int v112 = -2;
signed short v111 = -3;
unsigned short v110 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (signed int v113)
{
history[history_index++] = (int)v113;
{
for (;;) {
signed char v116 = -2;
unsigned short v115 = 1;
unsigned int v114 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
