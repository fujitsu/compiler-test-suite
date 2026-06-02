#include <stdlib.h>
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern unsigned int v7 (signed char);
extern unsigned int (*v8) (signed char);
extern signed int v9 (signed short, unsigned short, unsigned int, unsigned int);
extern signed int (*v10) (signed short, unsigned short, unsigned int, unsigned int);
extern unsigned char v11 (signed int, signed int);
extern unsigned char (*v12) (signed int, signed int);
signed char v13 (unsigned char);
signed char (*v14) (unsigned char) = v13;
extern signed int v15 (signed int, signed char, signed char, signed int);
extern signed int (*v16) (signed int, signed char, signed char, signed int);
extern void v17 (unsigned int);
extern void (*v18) (unsigned int);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
signed char v21 (unsigned short);
signed char (*v22) (unsigned short) = v21;
signed int v23 (unsigned short, signed short, signed int, signed short);
signed int (*v24) (unsigned short, signed short, signed int, signed short) = v23;
unsigned char v25 (signed char, signed char);
unsigned char (*v26) (signed char, signed char) = v25;
extern unsigned short v27 (signed short, signed short, signed short, signed short);
extern unsigned short (*v28) (signed short, signed short, signed short, signed short);
extern unsigned char v29 (signed short, signed short);
extern unsigned char (*v30) (signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v92 = 2;
signed short v91 = 2;
signed short v90 = 3;

unsigned char v25 (signed char v93, signed char v94)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
signed char v97 = -3;
signed int v96 = -2;
signed int v95 = -1;
trace++;
switch (trace)
{
case 11: 
return 6;
default: abort ();
}
}
}
}

signed int v23 (unsigned short v98, signed short v99, signed int v100, signed short v101)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
signed short v104 = -3;
signed int v103 = -2;
signed char v102 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v21 (unsigned short v105)
{
history[history_index++] = (int)v105;
{
for (;;) {
unsigned short v108 = 7;
signed short v107 = -2;
signed short v106 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (unsigned char v109)
{
history[history_index++] = (int)v109;
{
for (;;) {
unsigned char v112 = 1;
signed short v111 = -1;
unsigned char v110 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
