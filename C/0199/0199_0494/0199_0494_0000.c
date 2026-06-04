#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (signed short, signed short, unsigned char);
extern unsigned char (*v2) (signed short, signed short, unsigned char);
extern signed int v3 (signed char);
extern signed int (*v4) (signed char);
extern signed char v5 (unsigned int, signed char, unsigned int);
extern signed char (*v6) (unsigned int, signed char, unsigned int);
extern signed char v7 (signed short, unsigned int, unsigned short);
extern signed char (*v8) (signed short, unsigned int, unsigned short);
void v9 (unsigned short, signed short);
void (*v10) (unsigned short, signed short) = v9;
extern signed char v11 (unsigned short, signed short, signed int, unsigned short);
extern signed char (*v12) (unsigned short, signed short, signed int, unsigned short);
extern unsigned short v13 (unsigned int, signed int, unsigned short, signed short);
extern unsigned short (*v14) (unsigned int, signed int, unsigned short, signed short);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern void v19 (unsigned char, unsigned int);
extern void (*v20) (unsigned char, unsigned int);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
signed short v23 (unsigned char, unsigned short, unsigned char);
signed short (*v24) (unsigned char, unsigned short, unsigned char) = v23;
unsigned int v25 (signed int);
unsigned int (*v26) (signed int) = v25;
extern signed char v27 (signed char, unsigned char, unsigned int, unsigned int);
extern signed char (*v28) (signed char, unsigned char, unsigned int, unsigned int);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 1;
signed int v32 = -1;
unsigned short v31 = 5;

unsigned int v25 (signed int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned int v37 = 1U;
signed int v36 = 0;
unsigned short v35 = 6;
trace++;
switch (trace)
{
case 8: 
return v37;
case 10: 
return v37;
default: abort ();
}
}
}
}

signed short v23 (unsigned char v38, unsigned short v39, unsigned char v40)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
unsigned short v43 = 6;
signed char v42 = -3;
signed char v41 = 0;
trace++;
switch (trace)
{
case 4: 
{
unsigned int v44;
signed int v45;
unsigned short v46;
signed short v47;
unsigned short v48;
v44 = 5U + 7U;
v45 = -2 - 2;
v46 = v43 + v39;
v47 = 3 + -1;
v48 = v13 (v44, v45, v46, v47);
history[history_index++] = (int)v48;
}
break;
case 6: 
{
unsigned int v49;
signed int v50;
unsigned short v51;
signed short v52;
unsigned short v53;
v49 = 3U - 4U;
v50 = 2 + -1;
v51 = 4 + 0;
v52 = 3 - 1;
v53 = v13 (v49, v50, v51, v52);
history[history_index++] = (int)v53;
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}

void v9 (unsigned short v54, signed short v55)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
signed int v58 = 0;
unsigned short v57 = 6;
signed short v56 = 1;
trace++;
switch (trace)
{
case 1: 
return;
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
signed short v61;
signed short v62;
unsigned char v63;
unsigned char v64;
v61 = 2 + -3;
v62 = -1 + v33;
v63 = 1 - 7;
v64 = v1 (v61, v62, v63);
history[history_index++] = (int)v64;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
