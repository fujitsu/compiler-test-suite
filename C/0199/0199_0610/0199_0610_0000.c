#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (signed int, signed short, signed int, signed char);
extern signed int (*v2) (signed int, signed short, signed int, signed char);
extern unsigned char v3 (signed int, unsigned int, signed char, signed char);
extern unsigned char (*v4) (signed int, unsigned int, signed char, signed char);
extern unsigned char v5 (unsigned short, signed int);
extern unsigned char (*v6) (unsigned short, signed int);
extern unsigned int v7 (signed char);
extern unsigned int (*v8) (signed char);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern signed char v13 (void);
extern signed char (*v14) (void);
signed char v15 (unsigned int);
signed char (*v16) (unsigned int) = v15;
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern signed short v19 (signed short, unsigned char, signed short);
extern signed short (*v20) (signed short, unsigned char, signed short);
extern signed char v21 (unsigned int);
extern signed char (*v22) (unsigned int);
unsigned int v23 (unsigned short, unsigned int);
unsigned int (*v24) (unsigned short, unsigned int) = v23;
extern unsigned short v25 (signed int, signed short, signed int);
extern unsigned short (*v26) (signed int, signed short, signed int);
extern unsigned char v27 (signed int, signed int, unsigned short);
extern unsigned char (*v28) (signed int, signed int, unsigned short);
void v29 (signed int, signed int, signed short);
void (*v30) (signed int, signed int, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 7;
signed short v32 = 0;
unsigned short v31 = 5;

void v29 (signed int v34, signed int v35, signed short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned int v39 = 4U;
signed char v38 = -3;
signed short v37 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v23 (unsigned short v40, unsigned int v41)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
unsigned int v44 = 3U;
signed int v43 = -4;
signed int v42 = -1;
trace++;
switch (trace)
{
case 5: 
{
signed int v45;
signed int v46;
unsigned short v47;
unsigned char v48;
v45 = v43 + v43;
v46 = v43 - v43;
v47 = 5 - v40;
v48 = v27 (v45, v46, v47);
history[history_index++] = (int)v48;
}
break;
case 7: 
{
signed int v49;
signed int v50;
unsigned short v51;
unsigned char v52;
v49 = v43 - v43;
v50 = v43 + v43;
v51 = v40 + v40;
v52 = v27 (v49, v50, v51);
history[history_index++] = (int)v52;
}
break;
case 9: 
return 7U;
default: abort ();
}
}
}
}

signed char v15 (unsigned int v53)
{
history[history_index++] = (int)v53;
{
for (;;) {
signed short v56 = 0;
signed char v55 = -3;
unsigned int v54 = 2U;
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
signed short v60;
signed int v61;
signed char v62;
signed int v63;
v59 = -1 + -2;
v60 = v32 + v32;
v61 = -4 - 1;
v62 = -2 - -4;
v63 = v1 (v59, v60, v61, v62);
history[history_index++] = (int)v63;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
