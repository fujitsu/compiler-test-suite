#include <stdlib.h>
extern unsigned short v1 (signed int, unsigned char, signed short);
extern unsigned short (*v2) (signed int, unsigned char, signed short);
extern signed int v3 (signed char);
extern signed int (*v4) (signed char);
extern unsigned int v5 (unsigned int, unsigned int, signed short, signed int);
extern unsigned int (*v6) (unsigned int, unsigned int, signed short, signed int);
signed short v7 (unsigned short);
signed short (*v8) (unsigned short) = v7;
extern void v9 (unsigned short, signed short, signed short);
extern void (*v10) (unsigned short, signed short, signed short);
void v11 (signed short);
void (*v12) (signed short) = v11;
extern signed short v13 (unsigned short, unsigned int);
extern signed short (*v14) (unsigned short, unsigned int);
signed short v15 (signed short);
signed short (*v16) (signed short) = v15;
extern signed char v17 (signed char, signed char);
extern signed char (*v18) (signed char, signed char);
extern void v19 (unsigned int, signed int, unsigned int, signed char);
extern void (*v20) (unsigned int, signed int, unsigned int, signed char);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern signed char v23 (void);
extern signed char (*v24) (void);
extern signed int v25 (unsigned int);
extern signed int (*v26) (unsigned int);
unsigned char v29 (unsigned int);
unsigned char (*v30) (unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v69 = 1;
signed char v68 = 3;
unsigned int v67 = 7U;

unsigned char v29 (unsigned int v70)
{
history[history_index++] = (int)v70;
{
for (;;) {
unsigned char v73 = 3;
unsigned short v72 = 4;
unsigned int v71 = 5U;
trace++;
switch (trace)
{
case 11: 
return v73;
default: abort ();
}
}
}
}

signed short v15 (signed short v74)
{
history[history_index++] = (int)v74;
{
for (;;) {
unsigned int v77 = 2U;
unsigned char v76 = 2;
unsigned char v75 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (signed short v78)
{
history[history_index++] = (int)v78;
{
for (;;) {
unsigned short v81 = 5;
signed short v80 = 1;
signed char v79 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (unsigned short v82)
{
history[history_index++] = (int)v82;
{
for (;;) {
unsigned char v85 = 4;
signed int v84 = -1;
unsigned short v83 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
