#include <stdlib.h>
extern unsigned short v3 (signed short, signed int, unsigned short, signed int);
extern unsigned short (*v4) (signed short, signed int, unsigned short, signed int);
extern signed short v5 (signed short, signed int, signed short);
extern signed short (*v6) (signed short, signed int, signed short);
signed int v7 (unsigned char, unsigned int, unsigned int);
signed int (*v8) (unsigned char, unsigned int, unsigned int) = v7;
signed char v9 (void);
signed char (*v10) (void) = v9;
unsigned int v11 (signed int, signed short, unsigned char);
unsigned int (*v12) (signed int, signed short, unsigned char) = v11;
extern unsigned int v13 (signed int, unsigned char, signed short);
extern unsigned int (*v14) (signed int, unsigned char, signed short);
extern signed int v15 (unsigned short, signed char);
extern signed int (*v16) (unsigned short, signed char);
signed int v17 (signed int, signed char);
signed int (*v18) (signed int, signed char) = v17;
extern void v19 (signed int);
extern void (*v20) (signed int);
extern void v21 (void);
extern void (*v22) (void);
extern void v23 (signed char, unsigned int, signed short);
extern void (*v24) (signed char, unsigned int, signed short);
extern signed short v25 (unsigned int, unsigned char, signed int);
extern signed short (*v26) (unsigned int, unsigned char, signed int);
extern signed char v27 (unsigned short, signed char);
extern signed char (*v28) (unsigned short, signed char);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v96 = 5;
unsigned int v95 = 7U;
signed char v94 = -2;

signed int v17 (signed int v97, signed char v98)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
signed short v101 = -2;
signed int v100 = 1;
unsigned int v99 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (signed int v102, signed short v103, unsigned char v104)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
signed int v107 = 0;
unsigned char v106 = 5;
signed char v105 = -2;
trace++;
switch (trace)
{
case 5: 
return 2U;
case 8: 
return 4U;
default: abort ();
}
}
}
}

signed char v9 (void)
{
{
for (;;) {
signed short v110 = -3;
unsigned short v109 = 0;
unsigned char v108 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (unsigned char v111, unsigned int v112, unsigned int v113)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
signed int v116 = 3;
unsigned char v115 = 1;
unsigned int v114 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
