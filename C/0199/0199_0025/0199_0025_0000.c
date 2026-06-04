#include <stdio.h>
#include <stdlib.h>
static signed short v1 (unsigned int, signed int);
static signed short (*v2) (unsigned int, signed int) = v1;
extern void v3 (signed char, signed int, signed short);
extern void (*v4) (signed char, signed int, signed short);
extern signed char v5 (unsigned short, signed char, unsigned char, signed char);
extern signed char (*v6) (unsigned short, signed char, unsigned char, signed char);
unsigned int v7 (signed short);
unsigned int (*v8) (signed short) = v7;
extern void v9 (signed int, signed short, unsigned char);
extern void (*v10) (signed int, signed short, unsigned char);
extern signed char v11 (signed int);
extern signed char (*v12) (signed int);
extern signed int v13 (void);
extern signed int (*v14) (void);
signed short v15 (unsigned short, unsigned char, unsigned int);
signed short (*v16) (unsigned short, unsigned char, unsigned int) = v15;
unsigned char v17 (signed char, unsigned short, signed short);
unsigned char (*v18) (signed char, unsigned short, signed short) = v17;
extern unsigned short v19 (signed char);
extern unsigned short (*v20) (signed char);
extern signed char v21 (unsigned short, signed char);
extern signed char (*v22) (unsigned short, signed char);
extern signed char v23 (unsigned char, signed int, signed int);
extern signed char (*v24) (unsigned char, signed int, signed int);
extern signed short v25 (signed short);
extern signed short (*v26) (signed short);
extern signed short v27 (unsigned short, unsigned int, signed int, unsigned int);
extern signed short (*v28) (unsigned short, unsigned int, signed int, unsigned int);
extern unsigned char v29 (signed char);
extern unsigned char (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 4U;
signed int v32 = -1;
signed char v31 = -1;

unsigned char v17 (signed char v34, unsigned short v35, signed short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed char v39 = 3;
unsigned int v38 = 3U;
signed char v37 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (unsigned short v40, unsigned char v41, unsigned int v42)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
signed char v45 = 2;
unsigned short v44 = 4;
unsigned short v43 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (signed short v46)
{
history[history_index++] = (int)v46;
{
for (;;) {
signed char v49 = -3;
signed int v48 = 0;
unsigned short v47 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v1 (unsigned int v50, signed int v51)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
unsigned short v54 = 0;
signed short v53 = 3;
signed int v52 = -1;
trace++;
switch (trace)
{
case 0: 
{
signed char v55;
unsigned char v56;
v55 = -4 - -1;
v56 = v29 (v55);
history[history_index++] = (int)v56;
}
break;
case 2: 
{
signed int v57;
signed char v58;
v57 = v51 + v51;
v58 = v11 (v57);
history[history_index++] = (int)v58;
}
break;
case 12: 
return v53;
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
unsigned int v61;
signed int v62;
signed short v63;
v61 = 4U + v33;
v62 = v32 + 0;
v63 = v1 (v61, v62);
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
