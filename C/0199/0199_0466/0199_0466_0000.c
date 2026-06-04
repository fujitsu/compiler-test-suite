#include <stdio.h>
#include <stdlib.h>
static signed char v1 (signed short, unsigned short, unsigned short);
static signed char (*v2) (signed short, unsigned short, unsigned short) = v1;
extern signed short v3 (unsigned short, unsigned char, signed char);
extern signed short (*v4) (unsigned short, unsigned char, signed char);
signed int v5 (signed int);
signed int (*v6) (signed int) = v5;
extern unsigned char v7 (signed int, signed int, unsigned int, unsigned char);
extern unsigned char (*v8) (signed int, signed int, unsigned int, unsigned char);
extern unsigned char v9 (unsigned char, unsigned char, unsigned int);
extern unsigned char (*v10) (unsigned char, unsigned char, unsigned int);
extern signed int v11 (signed short, signed int);
extern signed int (*v12) (signed short, signed int);
unsigned char v13 (void);
unsigned char (*v14) (void) = v13;
extern unsigned int v15 (signed char);
extern unsigned int (*v16) (signed char);
extern unsigned short v17 (signed short, unsigned int, unsigned char);
extern unsigned short (*v18) (signed short, unsigned int, unsigned char);
extern unsigned int v19 (signed int, signed int, unsigned short, unsigned char);
extern unsigned int (*v20) (signed int, signed int, unsigned short, unsigned char);
extern signed int v21 (signed short);
extern signed int (*v22) (signed short);
extern unsigned int v23 (unsigned int);
extern unsigned int (*v24) (unsigned int);
extern signed char v25 (signed short, unsigned char);
extern signed char (*v26) (signed short, unsigned char);
extern void v27 (unsigned short, unsigned int);
extern void (*v28) (unsigned short, unsigned int);
extern signed char v29 (signed char);
extern signed char (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 0;
unsigned char v32 = 3;
signed short v31 = -1;

unsigned char v13 (void)
{
{
for (;;) {
signed short v36 = -4;
signed int v35 = -3;
unsigned int v34 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (signed int v37)
{
history[history_index++] = (int)v37;
{
for (;;) {
unsigned char v40 = 6;
unsigned int v39 = 2U;
signed char v38 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v1 (signed short v41, unsigned short v42, unsigned short v43)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
signed char v46 = 3;
signed char v45 = -4;
signed short v44 = 1;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v47;
unsigned int v48;
v47 = v43 + 7;
v48 = 3U - 7U;
v27 (v47, v48);
}
break;
case 2: 
{
signed short v49;
signed int v50;
v49 = v44 + 0;
v50 = v21 (v49);
history[history_index++] = (int)v50;
}
break;
case 4: 
{
unsigned short v51;
unsigned int v52;
v51 = v43 + 7;
v52 = 2U - 7U;
v27 (v51, v52);
}
break;
case 6: 
{
signed short v53;
unsigned char v54;
signed char v55;
v53 = v41 - 3;
v54 = 0 - 2;
v55 = v25 (v53, v54);
history[history_index++] = (int)v55;
}
break;
case 10: 
{
signed short v56;
signed int v57;
v56 = v44 - v41;
v57 = v21 (v56);
history[history_index++] = (int)v57;
}
break;
case 12: 
return -2;
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
signed short v60;
unsigned short v61;
unsigned short v62;
signed char v63;
v60 = v31 + -1;
v61 = 2 - 0;
v62 = 5 + 2;
v63 = v1 (v60, v61, v62);
history[history_index++] = (int)v63;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
