#include <stdlib.h>
extern unsigned int v1 (signed char, signed int, signed char);
extern unsigned int (*v2) (signed char, signed int, signed char);
unsigned char v3 (signed short, signed char, signed int, signed short);
unsigned char (*v4) (signed short, signed char, signed int, signed short) = v3;
unsigned char v5 (void);
unsigned char (*v6) (void) = v5;
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern unsigned short v9 (unsigned short, unsigned short);
extern unsigned short (*v10) (unsigned short, unsigned short);
extern signed int v11 (unsigned int);
extern signed int (*v12) (unsigned int);
extern signed int v13 (signed int, signed char, signed short);
extern signed int (*v14) (signed int, signed char, signed short);
extern unsigned int v15 (signed int, unsigned short, unsigned int);
extern unsigned int (*v16) (signed int, unsigned short, unsigned int);
extern signed int v17 (void);
extern signed int (*v18) (void);
extern unsigned short v19 (signed short, unsigned int, signed int, unsigned char);
extern unsigned short (*v20) (signed short, unsigned int, signed int, unsigned char);
extern unsigned int v21 (signed short, unsigned short);
extern unsigned int (*v22) (signed short, unsigned short);
extern unsigned int v23 (signed int, signed char, unsigned int, unsigned short);
extern unsigned int (*v24) (signed int, signed char, unsigned int, unsigned short);
unsigned short v25 (unsigned char, unsigned char, signed char, unsigned char);
unsigned short (*v26) (unsigned char, unsigned char, signed char, unsigned char) = v25;
extern signed int v27 (unsigned short, signed short, unsigned int, unsigned char);
extern signed int (*v28) (unsigned short, signed short, unsigned int, unsigned char);
unsigned int v29 (unsigned short);
unsigned int (*v30) (unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v81 = -3;
unsigned int v80 = 0U;
signed char v79 = 0;

unsigned int v29 (unsigned short v82)
{
history[history_index++] = (int)v82;
{
for (;;) {
unsigned short v85 = 3;
unsigned short v84 = 0;
unsigned char v83 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v25 (unsigned char v86, unsigned char v87, signed char v88, unsigned char v89)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
unsigned int v92 = 0U;
unsigned int v91 = 2U;
unsigned char v90 = 7;
trace++;
switch (trace)
{
case 7: 
return 5;
default: abort ();
}
}
}
}

unsigned char v5 (void)
{
{
for (;;) {
signed short v95 = -4;
signed char v94 = -4;
signed short v93 = -3;
trace++;
switch (trace)
{
case 11: 
return 1;
default: abort ();
}
}
}
}

unsigned char v3 (signed short v96, signed char v97, signed int v98, signed short v99)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
signed short v102 = 1;
unsigned int v101 = 0U;
signed short v100 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
