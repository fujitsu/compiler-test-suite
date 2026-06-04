#include <stdio.h>
#include <stdlib.h>
extern void v1 (signed int, signed short, signed char);
extern void (*v2) (signed int, signed short, signed char);
extern unsigned char v3 (unsigned char, signed short);
extern unsigned char (*v4) (unsigned char, signed short);
extern unsigned char v5 (unsigned short, signed int, unsigned char);
extern unsigned char (*v6) (unsigned short, signed int, unsigned char);
extern unsigned short v7 (signed short, signed int);
extern unsigned short (*v8) (signed short, signed int);
signed int v9 (signed char, unsigned char, unsigned int, unsigned int);
signed int (*v10) (signed char, unsigned char, unsigned int, unsigned int) = v9;
unsigned int v11 (unsigned short);
unsigned int (*v12) (unsigned short) = v11;
extern unsigned short v13 (unsigned short, unsigned short);
extern unsigned short (*v14) (unsigned short, unsigned short);
extern unsigned int v15 (unsigned short);
extern unsigned int (*v16) (unsigned short);
extern unsigned short v17 (signed int, signed int);
extern unsigned short (*v18) (signed int, signed int);
extern signed short v19 (unsigned short, signed int, unsigned char, unsigned short);
extern signed short (*v20) (unsigned short, signed int, unsigned char, unsigned short);
extern signed int v21 (unsigned int, unsigned short, signed int, unsigned short);
extern signed int (*v22) (unsigned int, unsigned short, signed int, unsigned short);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern unsigned short v25 (unsigned char);
extern unsigned short (*v26) (unsigned char);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
static signed char v29 (unsigned short);
static signed char (*v30) (unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -1;
unsigned char v32 = 7;
signed short v31 = 2;

static signed char v29 (unsigned short v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed char v37 = -3;
signed int v36 = -4;
signed char v35 = 2;
trace++;
switch (trace)
{
case 5: 
{
signed short v38;
signed int v39;
unsigned short v40;
v38 = -1 + 1;
v39 = -4 + v36;
v40 = v7 (v38, v39);
history[history_index++] = (int)v40;
}
break;
case 8: 
{
signed short v41;
signed int v42;
unsigned short v43;
v41 = 0 + -3;
v42 = 1 - v36;
v43 = v7 (v41, v42);
history[history_index++] = (int)v43;
}
break;
case 12: 
return v37;
case 15: 
return v37;
default: abort ();
}
}
}
}

unsigned int v11 (unsigned short v44)
{
history[history_index++] = (int)v44;
{
for (;;) {
signed int v47 = 3;
unsigned short v46 = 1;
unsigned short v45 = 4;
trace++;
switch (trace)
{
case 2: 
return 2U;
case 4: 
{
unsigned short v48;
signed char v49;
v48 = 6 - v45;
v49 = v29 (v48);
history[history_index++] = (int)v49;
}
break;
case 16: 
return 2U;
default: abort ();
}
}
}
}

signed int v9 (signed char v50, unsigned char v51, unsigned int v52, unsigned int v53)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
unsigned int v56 = 5U;
unsigned short v55 = 5;
signed char v54 = 3;
trace++;
switch (trace)
{
case 7: 
{
unsigned short v57;
signed char v58;
v57 = 2 - 4;
v58 = v29 (v57);
history[history_index++] = (int)v58;
}
break;
case 13: 
return 1;
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
signed int v61;
signed short v62;
signed char v63;
v61 = 1 + 3;
v62 = -4 + 2;
v63 = v33 + 3;
v1 (v61, v62, v63);
}
} while (trace < 17);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
