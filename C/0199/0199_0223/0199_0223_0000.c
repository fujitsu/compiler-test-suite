#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (signed int);
extern signed char (*v2) (signed int);
extern void v3 (unsigned char, unsigned short);
extern void (*v4) (unsigned char, unsigned short);
extern unsigned short v5 (signed char, signed int, unsigned short, signed int);
extern unsigned short (*v6) (signed char, signed int, unsigned short, signed int);
extern void v7 (unsigned int);
extern void (*v8) (unsigned int);
extern unsigned int v9 (signed short, signed int);
extern unsigned int (*v10) (signed short, signed int);
signed char v11 (unsigned char, unsigned int);
signed char (*v12) (unsigned char, unsigned int) = v11;
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern unsigned short v15 (unsigned short, signed short);
extern unsigned short (*v16) (unsigned short, signed short);
extern signed short v17 (unsigned char, unsigned int, signed char, unsigned int);
extern signed short (*v18) (unsigned char, unsigned int, signed char, unsigned int);
extern signed char v19 (signed char, unsigned short);
extern signed char (*v20) (signed char, unsigned short);
extern unsigned short v21 (unsigned short);
extern unsigned short (*v22) (unsigned short);
signed char v23 (void);
signed char (*v24) (void) = v23;
signed int v25 (unsigned char, signed char, signed char);
signed int (*v26) (unsigned char, signed char, signed char) = v25;
extern signed int v27 (void);
extern signed int (*v28) (void);
signed char v29 (unsigned short);
signed char (*v30) (unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 6;
unsigned int v32 = 3U;
unsigned int v31 = 1U;

signed char v29 (unsigned short v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned char v37 = 6;
signed short v36 = 2;
unsigned short v35 = 7;
trace++;
switch (trace)
{
case 4: 
{
signed char v38;
signed int v39;
unsigned short v40;
signed int v41;
unsigned short v42;
v38 = -2 + -4;
v39 = 0 + 1;
v40 = v34 - v34;
v41 = 1 - 1;
v42 = v5 (v38, v39, v40, v41);
history[history_index++] = (int)v42;
}
break;
case 11: 
return 1;
case 16: 
return 0;
default: abort ();
}
}
}
}

signed int v25 (unsigned char v43, signed char v44, signed char v45)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
signed short v48 = -1;
signed int v47 = 0;
signed char v46 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v23 (void)
{
{
for (;;) {
unsigned short v51 = 1;
signed char v50 = -1;
signed int v49 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (unsigned char v52, unsigned int v53)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
unsigned char v56 = 4;
signed int v55 = 3;
signed int v54 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
signed int v59;
signed char v60;
v59 = -4 - 3;
v60 = v1 (v59);
history[history_index++] = (int)v60;
}
} while (trace < 18);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
