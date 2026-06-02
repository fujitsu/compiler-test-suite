#include <stdio.h>
#include <stdlib.h>
static signed short v1 (signed int, unsigned char, signed int, signed char);
static signed short (*v2) (signed int, unsigned char, signed int, signed char) = v1;
extern unsigned char v3 (signed short, signed short, unsigned int, signed char);
extern unsigned char (*v4) (signed short, signed short, unsigned int, signed char);
extern unsigned int v5 (signed short);
extern unsigned int (*v6) (signed short);
extern signed short v7 (unsigned short, unsigned int, unsigned char);
extern signed short (*v8) (unsigned short, unsigned int, unsigned char);
extern signed short v9 (signed int, unsigned short, unsigned int);
extern signed short (*v10) (signed int, unsigned short, unsigned int);
extern signed int v11 (signed int, unsigned char, unsigned short);
extern signed int (*v12) (signed int, unsigned char, unsigned short);
extern void v13 (signed int);
extern void (*v14) (signed int);
extern void v15 (unsigned int, unsigned char);
extern void (*v16) (unsigned int, unsigned char);
extern void v17 (signed int, signed short, signed int, unsigned int);
extern void (*v18) (signed int, signed short, signed int, unsigned int);
extern signed int v19 (signed int, unsigned int, unsigned int);
extern signed int (*v20) (signed int, unsigned int, unsigned int);
signed int v23 (signed int);
signed int (*v24) (signed int) = v23;
signed int v25 (unsigned char, unsigned int, signed int);
signed int (*v26) (unsigned char, unsigned int, signed int) = v25;
extern unsigned short v27 (signed short, unsigned short);
extern unsigned short (*v28) (signed short, unsigned short);
extern signed char v29 (signed short, unsigned int, unsigned short, unsigned int);
extern signed char (*v30) (signed short, unsigned int, unsigned short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -4;
unsigned int v32 = 5U;
unsigned short v31 = 6;

signed int v25 (unsigned char v34, unsigned int v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned char v39 = 0;
signed char v38 = -3;
unsigned short v37 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v23 (signed int v40)
{
history[history_index++] = (int)v40;
{
for (;;) {
unsigned int v43 = 3U;
signed int v42 = 1;
unsigned short v41 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v1 (signed int v44, unsigned char v45, signed int v46, signed char v47)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
signed int v50 = 1;
signed short v49 = 1;
unsigned char v48 = 4;
trace++;
switch (trace)
{
case 0: 
{
signed short v51;
signed short v52;
unsigned int v53;
signed char v54;
unsigned char v55;
v51 = v49 + v49;
v52 = v49 - -1;
v53 = 4U + 4U;
v54 = v47 - 1;
v55 = v3 (v51, v52, v53, v54);
history[history_index++] = (int)v55;
}
break;
case 14: 
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
signed int v58;
unsigned char v59;
signed int v60;
signed char v61;
signed short v62;
v58 = v33 - 0;
v59 = 2 - 4;
v60 = v33 + v33;
v61 = 2 - -2;
v62 = v1 (v58, v59, v60, v61);
history[history_index++] = (int)v62;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
