#include <stdio.h>
#include <stdlib.h>
static signed int v1 (void);
static signed int (*v2) (void) = v1;
extern signed int v3 (void);
extern signed int (*v4) (void);
extern signed short v5 (unsigned char, signed char, signed int, signed int);
extern signed short (*v6) (unsigned char, signed char, signed int, signed int);
extern signed int v7 (signed short, unsigned short, signed short, signed char);
extern signed int (*v8) (signed short, unsigned short, signed short, signed char);
extern signed char v9 (void);
extern signed char (*v10) (void);
unsigned int v11 (signed int, signed short, unsigned short, signed short);
unsigned int (*v12) (signed int, signed short, unsigned short, signed short) = v11;
extern unsigned char v13 (unsigned short, signed int);
extern unsigned char (*v14) (unsigned short, signed int);
extern signed char v15 (unsigned int, signed short, unsigned char, signed char);
extern signed char (*v16) (unsigned int, signed short, unsigned char, signed char);
extern signed int v17 (signed short, unsigned short, unsigned short, signed short);
extern signed int (*v18) (signed short, unsigned short, unsigned short, signed short);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern void v21 (signed char, signed char, signed short);
extern void (*v22) (signed char, signed char, signed short);
extern signed short v23 (unsigned char, unsigned char, signed short);
extern signed short (*v24) (unsigned char, unsigned char, signed short);
unsigned int v25 (signed int, signed char, unsigned char, unsigned short);
unsigned int (*v26) (signed int, signed char, unsigned char, unsigned short) = v25;
extern signed char v27 (unsigned short, unsigned char);
extern signed char (*v28) (unsigned short, unsigned char);
signed int v29 (signed short, signed char);
signed int (*v30) (signed short, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 2;
unsigned int v32 = 0U;
unsigned short v31 = 7;

signed int v29 (signed short v34, signed char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed short v38 = 3;
signed int v37 = 0;
unsigned short v36 = 7;
trace++;
switch (trace)
{
case 2: 
return 0;
case 4: 
return v37;
default: abort ();
}
}
}
}

unsigned int v25 (signed int v39, signed char v40, unsigned char v41, unsigned short v42)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned char v45 = 0;
unsigned char v44 = 7;
signed short v43 = 0;
trace++;
switch (trace)
{
case 8: 
return 1U;
default: abort ();
}
}
}
}

unsigned int v11 (signed int v46, signed short v47, unsigned short v48, signed short v49)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
unsigned int v52 = 0U;
unsigned int v51 = 1U;
signed short v50 = 1;
trace++;
switch (trace)
{
case 6: 
{
unsigned char v53;
unsigned char v54;
signed short v55;
signed short v56;
v53 = 7 - 1;
v54 = 7 - 7;
v55 = v50 - v47;
v56 = v23 (v53, v54, v55);
history[history_index++] = (int)v56;
}
break;
case 10: 
{
unsigned char v57;
unsigned char v58;
signed short v59;
signed short v60;
v57 = 2 - 4;
v58 = 4 - 5;
v59 = v50 + v49;
v60 = v23 (v57, v58, v59);
history[history_index++] = (int)v60;
}
break;
case 12: 
return v52;
default: abort ();
}
}
}
}

static signed int v1 (void)
{
{
for (;;) {
signed char v63 = -2;
signed int v62 = 3;
signed short v61 = -2;
trace++;
switch (trace)
{
case 0: 
{
signed int v64;
v64 = v3 ();
history[history_index++] = (int)v64;
}
break;
case 14: 
return v62;
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
signed int v67;
v67 = v1 ();
history[history_index++] = (int)v67;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
