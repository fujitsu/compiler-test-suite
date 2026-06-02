#include <stdio.h>
#include <stdlib.h>
static signed char v1 (unsigned short, signed short, signed int, signed char);
static signed char (*v2) (unsigned short, signed short, signed int, signed char) = v1;
extern signed short v3 (signed int, signed char);
extern signed short (*v4) (signed int, signed char);
extern unsigned short v5 (unsigned char, signed short, unsigned int, unsigned int);
extern unsigned short (*v6) (unsigned char, signed short, unsigned int, unsigned int);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
signed short v9 (signed short, unsigned char);
signed short (*v10) (signed short, unsigned char) = v9;
extern unsigned short v11 (unsigned short);
extern unsigned short (*v12) (unsigned short);
extern signed int v13 (unsigned char);
extern signed int (*v14) (unsigned char);
extern unsigned short v15 (signed short, signed char, signed int, signed char);
extern unsigned short (*v16) (signed short, signed char, signed int, signed char);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern void v19 (unsigned char, signed int);
extern void (*v20) (unsigned char, signed int);
extern unsigned int v21 (signed char);
extern unsigned int (*v22) (signed char);
extern void v23 (signed int, signed int);
extern void (*v24) (signed int, signed int);
extern unsigned int v25 (unsigned int, signed short, unsigned char);
extern unsigned int (*v26) (unsigned int, signed short, unsigned char);
extern void v27 (unsigned int);
extern void (*v28) (unsigned int);
unsigned char v29 (unsigned char, signed short);
unsigned char (*v30) (unsigned char, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 7;
signed char v32 = 0;
signed int v31 = -2;

unsigned char v29 (unsigned char v34, signed short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned int v38 = 1U;
signed short v37 = -4;
unsigned short v36 = 6;
trace++;
switch (trace)
{
case 4: 
return 3;
case 6: 
return 2;
default: abort ();
}
}
}
}

signed short v9 (signed short v39, unsigned char v40)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
unsigned short v43 = 1;
unsigned short v42 = 1;
unsigned short v41 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v1 (unsigned short v44, signed short v45, signed int v46, signed char v47)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
signed int v50 = -2;
unsigned int v49 = 1U;
unsigned int v48 = 3U;
trace++;
switch (trace)
{
case 0: 
{
signed char v51;
unsigned int v52;
v51 = 0 - 2;
v52 = v21 (v51);
history[history_index++] = (int)v52;
}
break;
case 10: 
{
unsigned char v53;
signed short v54;
unsigned int v55;
unsigned int v56;
unsigned short v57;
v53 = 4 - 1;
v54 = v45 + -2;
v55 = v48 + 3U;
v56 = v48 - v48;
v57 = v5 (v53, v54, v55, v56);
history[history_index++] = (int)v57;
}
break;
case 12: 
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
unsigned short v60;
signed short v61;
signed int v62;
signed char v63;
signed char v64;
v60 = 0 - 2;
v61 = -1 - 2;
v62 = 1 - 3;
v63 = v32 - 2;
v64 = v1 (v60, v61, v62, v63);
history[history_index++] = (int)v64;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
