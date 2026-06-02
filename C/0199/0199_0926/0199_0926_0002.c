#include <stdlib.h>
extern signed short v1 (signed int);
extern signed short (*v2) (signed int);
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
signed char v5 (unsigned int);
signed char (*v6) (unsigned int) = v5;
signed short v7 (void);
signed short (*v8) (void) = v7;
extern void v9 (unsigned int, unsigned int);
extern void (*v10) (unsigned int, unsigned int);
extern void v13 (signed int, signed char, unsigned char, signed int);
extern void (*v14) (signed int, signed char, unsigned char, signed int);
extern signed short v15 (signed short, unsigned int);
extern signed short (*v16) (signed short, unsigned int);
extern signed char v17 (signed short, signed char, unsigned char);
extern signed char (*v18) (signed short, signed char, unsigned char);
extern signed int v19 (signed short);
extern signed int (*v20) (signed short);
extern signed short v21 (unsigned short);
extern signed short (*v22) (unsigned short);
unsigned char v23 (void);
unsigned char (*v24) (void) = v23;
extern unsigned int v25 (unsigned short);
extern unsigned int (*v26) (unsigned short);
signed char v27 (unsigned char, unsigned int, unsigned short);
signed char (*v28) (unsigned char, unsigned int, unsigned short) = v27;
extern unsigned int v29 (unsigned char, signed char, unsigned char);
extern unsigned int (*v30) (unsigned char, signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v69 = -1;
unsigned int v68 = 4U;
signed int v67 = -1;

signed char v27 (unsigned char v70, unsigned int v71, unsigned short v72)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
signed char v75 = 1;
unsigned int v74 = 0U;
unsigned char v73 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v23 (void)
{
{
for (;;) {
signed int v78 = 3;
signed int v77 = -3;
unsigned char v76 = 1;
trace++;
switch (trace)
{
case 3: 
return v76;
case 5: 
return 4;
default: abort ();
}
}
}
}

signed short v7 (void)
{
{
for (;;) {
unsigned int v81 = 0U;
signed char v80 = -3;
unsigned short v79 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (unsigned int v82)
{
history[history_index++] = (int)v82;
{
for (;;) {
signed short v85 = -1;
signed int v84 = 2;
unsigned short v83 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
