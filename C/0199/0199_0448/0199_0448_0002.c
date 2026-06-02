#include <stdlib.h>
extern unsigned int v3 (signed int, unsigned int, unsigned int, unsigned int);
extern unsigned int (*v4) (signed int, unsigned int, unsigned int, unsigned int);
extern unsigned char v5 (unsigned char, signed int, unsigned int);
extern unsigned char (*v6) (unsigned char, signed int, unsigned int);
extern void v7 (unsigned short, signed short);
extern void (*v8) (unsigned short, signed short);
extern signed int v11 (signed int, unsigned int, signed int, unsigned short);
extern signed int (*v12) (signed int, unsigned int, signed int, unsigned short);
signed short v13 (void);
signed short (*v14) (void) = v13;
extern unsigned int v15 (unsigned short, signed int);
extern unsigned int (*v16) (unsigned short, signed int);
extern void v17 (signed short, signed char, unsigned short, unsigned int);
extern void (*v18) (signed short, signed char, unsigned short, unsigned int);
extern signed short v19 (unsigned char, signed int, unsigned short);
extern signed short (*v20) (unsigned char, signed int, unsigned short);
signed int v21 (signed char);
signed int (*v22) (signed char) = v21;
extern void v23 (signed short, unsigned short, signed int);
extern void (*v24) (signed short, unsigned short, signed int);
signed char v25 (signed char, signed int);
signed char (*v26) (signed char, signed int) = v25;
extern signed short v27 (void);
extern signed short (*v28) (void);
extern signed char v29 (unsigned int, unsigned short, signed char, signed int);
extern signed char (*v30) (unsigned int, unsigned short, signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v92 = 5;
signed int v91 = 0;
unsigned char v90 = 2;

signed char v25 (signed char v93, signed int v94)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
signed int v97 = -2;
signed char v96 = -1;
unsigned char v95 = 0;
trace++;
switch (trace)
{
case 1: 
return v96;
default: abort ();
}
}
}
}

signed int v21 (signed char v98)
{
history[history_index++] = (int)v98;
{
for (;;) {
signed short v101 = -2;
unsigned char v100 = 5;
signed int v99 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (void)
{
{
for (;;) {
signed char v104 = 0;
unsigned int v103 = 3U;
signed short v102 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
