#include <stdlib.h>
extern unsigned int v1 (unsigned char);
extern unsigned int (*v2) (unsigned char);
extern signed char v3 (unsigned short);
extern signed char (*v4) (unsigned short);
extern signed char v5 (unsigned short);
extern signed char (*v6) (unsigned short);
extern unsigned int v7 (signed int, unsigned short, unsigned short);
extern unsigned int (*v8) (signed int, unsigned short, unsigned short);
void v11 (unsigned char);
void (*v12) (unsigned char) = v11;
extern signed short v13 (signed char, unsigned short);
extern signed short (*v14) (signed char, unsigned short);
void v15 (unsigned int, unsigned int);
void (*v16) (unsigned int, unsigned int) = v15;
extern unsigned int v17 (signed int, signed char, unsigned int, unsigned short);
extern unsigned int (*v18) (signed int, signed char, unsigned int, unsigned short);
extern void v19 (signed int, unsigned int, unsigned int);
extern void (*v20) (signed int, unsigned int, unsigned int);
extern void v21 (void);
extern void (*v22) (void);
extern unsigned int v23 (signed int, signed short, signed int, signed int);
extern unsigned int (*v24) (signed int, signed short, signed int, signed int);
extern signed short v25 (void);
extern signed short (*v26) (void);
extern signed char v29 (signed int);
extern signed char (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v92 = -1;
unsigned char v91 = 5;
unsigned short v90 = 7;

void v15 (unsigned int v93, unsigned int v94)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
unsigned int v97 = 1U;
signed char v96 = 1;
signed int v95 = 1;
trace++;
switch (trace)
{
case 9: 
{
signed int v98;
signed char v99;
v98 = v95 + 0;
v99 = v29 (v98);
history[history_index++] = (int)v99;
}
break;
case 11: 
return;
default: abort ();
}
}
}
}

void v11 (unsigned char v100)
{
history[history_index++] = (int)v100;
{
for (;;) {
unsigned int v103 = 0U;
signed char v102 = -3;
unsigned char v101 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
