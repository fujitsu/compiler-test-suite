#include <stdio.h>
#include <stdlib.h>
signed char v1 (unsigned char, unsigned short);
signed char (*v2) (unsigned char, unsigned short) = v1;
extern unsigned short v3 (signed char, signed char, signed int, signed int);
extern unsigned short (*v4) (signed char, signed char, signed int, signed int);
extern signed char v5 (signed char, signed int, unsigned int);
extern signed char (*v6) (signed char, signed int, unsigned int);
void v7 (signed char, signed char);
void (*v8) (signed char, signed char) = v7;
extern void v9 (void);
extern void (*v10) (void);
extern signed short v11 (unsigned char, unsigned short, unsigned int, unsigned int);
extern signed short (*v12) (unsigned char, unsigned short, unsigned int, unsigned int);
extern unsigned short v13 (unsigned int);
extern unsigned short (*v14) (unsigned int);
extern void v15 (signed char, unsigned char);
extern void (*v16) (signed char, unsigned char);
extern signed char v17 (signed short, signed int);
extern signed char (*v18) (signed short, signed int);
unsigned short v19 (signed char, signed int, signed char);
unsigned short (*v20) (signed char, signed int, signed char) = v19;
extern unsigned short v21 (signed char, unsigned int, signed char);
extern unsigned short (*v22) (signed char, unsigned int, signed char);
extern unsigned int v23 (unsigned short, unsigned int);
extern unsigned int (*v24) (unsigned short, unsigned int);
extern signed char v25 (signed int, signed int, signed char, signed short);
extern signed char (*v26) (signed int, signed int, signed char, signed short);
extern unsigned short v27 (unsigned char, signed short, unsigned char, unsigned short);
extern unsigned short (*v28) (unsigned char, signed short, unsigned char, unsigned short);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 2;
signed int v32 = 3;
unsigned char v31 = 4;

unsigned short v19 (signed char v34, signed int v35, signed char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed char v39 = 0;
signed char v38 = 0;
signed char v37 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (signed char v40, signed char v41)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
signed short v44 = -1;
unsigned short v43 = 3;
signed int v42 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (unsigned char v45, unsigned short v46)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
signed char v49 = 2;
unsigned short v48 = 1;
unsigned int v47 = 2U;
trace++;
switch (trace)
{
case 0: 
{
signed char v50;
signed char v51;
signed int v52;
signed int v53;
unsigned short v54;
v50 = 0 - -3;
v51 = 0 + v49;
v52 = -2 - 1;
v53 = 1 + 2;
v54 = v3 (v50, v51, v52, v53);
history[history_index++] = (int)v54;
}
break;
case 5: 
{
signed char v55;
unsigned int v56;
signed char v57;
unsigned short v58;
v55 = -1 - v49;
v56 = 2U - 2U;
v57 = v49 - v49;
v58 = v21 (v55, v56, v57);
history[history_index++] = (int)v58;
}
break;
case 13: 
return v49;
case 16: 
return -1;
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
unsigned char v61;
unsigned short v62;
signed char v63;
v61 = 3 + v31;
v62 = 2 - 0;
v63 = v1 (v61, v62);
history[history_index++] = (int)v63;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
