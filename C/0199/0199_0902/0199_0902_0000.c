#include <stdio.h>
#include <stdlib.h>
static signed short v1 (unsigned int, signed char);
static signed short (*v2) (unsigned int, signed char) = v1;
unsigned short v3 (unsigned int, unsigned int, unsigned char);
unsigned short (*v4) (unsigned int, unsigned int, unsigned char) = v3;
extern signed int v5 (signed char, unsigned char, signed int);
extern signed int (*v6) (signed char, unsigned char, signed int);
extern unsigned int v7 (unsigned char, signed short, unsigned char, signed char);
extern unsigned int (*v8) (unsigned char, signed short, unsigned char, signed char);
extern unsigned short v9 (unsigned int, unsigned int, signed int);
extern unsigned short (*v10) (unsigned int, unsigned int, signed int);
extern void v11 (unsigned int, unsigned short, signed int);
extern void (*v12) (unsigned int, unsigned short, signed int);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern signed char v15 (signed int, unsigned int, unsigned int, unsigned short);
extern signed char (*v16) (signed int, unsigned int, unsigned int, unsigned short);
extern signed int v17 (unsigned int, signed short, unsigned int);
extern signed int (*v18) (unsigned int, signed short, unsigned int);
extern unsigned short v19 (signed char, unsigned short, unsigned short);
extern unsigned short (*v20) (signed char, unsigned short, unsigned short);
unsigned int v21 (signed int, signed char, unsigned short);
unsigned int (*v22) (signed int, signed char, unsigned short) = v21;
extern unsigned short v23 (signed short, unsigned char);
extern unsigned short (*v24) (signed short, unsigned char);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
signed char v29 (void);
signed char (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 5U;
signed char v32 = -2;
signed int v31 = -3;

signed char v29 (void)
{
{
for (;;) {
unsigned int v36 = 3U;
signed int v35 = -2;
signed int v34 = 0;
trace++;
switch (trace)
{
case 5: 
return 2;
case 7: 
return 2;
case 11: 
return 2;
default: abort ();
}
}
}
}

unsigned int v21 (signed int v37, signed char v38, unsigned short v39)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
signed int v42 = -2;
unsigned int v41 = 0U;
signed short v40 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (unsigned int v43, unsigned int v44, unsigned char v45)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
signed short v48 = 0;
signed short v47 = -4;
signed short v46 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v1 (unsigned int v49, signed char v50)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
signed short v53 = -2;
signed short v52 = -4;
signed char v51 = -4;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v54;
signed short v55;
unsigned char v56;
signed char v57;
unsigned int v58;
v54 = 4 - 6;
v55 = v53 - 3;
v56 = 1 - 1;
v57 = v51 - v50;
v58 = v7 (v54, v55, v56, v57);
history[history_index++] = (int)v58;
}
break;
case 14: 
return 3;
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
signed char v62;
signed short v63;
v61 = v33 + v33;
v62 = -4 + 1;
v63 = v1 (v61, v62);
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
