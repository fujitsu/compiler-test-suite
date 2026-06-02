#include <stdlib.h>
extern unsigned int v1 (unsigned short);
extern unsigned int (*v2) (unsigned short);
signed char v3 (void);
signed char (*v4) (void) = v3;
extern unsigned int v5 (unsigned char);
extern unsigned int (*v6) (unsigned char);
extern unsigned char v7 (unsigned int, signed char, signed short);
extern unsigned char (*v8) (unsigned int, signed char, signed short);
extern signed int v9 (signed short);
extern signed int (*v10) (signed short);
extern unsigned char v11 (signed char, signed int, signed int);
extern unsigned char (*v12) (signed char, signed int, signed int);
extern signed short v15 (signed int, signed int, unsigned char);
extern signed short (*v16) (signed int, signed int, unsigned char);
signed char v17 (signed int, signed char, signed char, signed int);
signed char (*v18) (signed int, signed char, signed char, signed int) = v17;
extern unsigned short v21 (signed char, signed char);
extern unsigned short (*v22) (signed char, signed char);
extern void v23 (void);
extern void (*v24) (void);
extern signed int v25 (signed int, unsigned short, signed int);
extern signed int (*v26) (signed int, unsigned short, signed int);
extern signed short v27 (unsigned char, signed char);
extern signed short (*v28) (unsigned char, signed char);
signed int v29 (unsigned char, unsigned char);
signed int (*v30) (unsigned char, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v92 = 5U;
unsigned int v91 = 2U;
signed char v90 = 1;

signed int v29 (unsigned char v93, unsigned char v94)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
signed char v97 = 1;
signed char v96 = 2;
unsigned char v95 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (signed int v98, signed char v99, signed char v100, signed int v101)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
signed short v104 = -2;
signed short v103 = 1;
signed int v102 = -1;
trace++;
switch (trace)
{
case 8: 
return v99;
default: abort ();
}
}
}
}

signed char v3 (void)
{
{
for (;;) {
unsigned char v107 = 4;
unsigned int v106 = 2U;
signed int v105 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
