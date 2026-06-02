#include <stdio.h>
#include <stdlib.h>
static signed char v1 (unsigned short, signed char);
static signed char (*v2) (unsigned short, signed char) = v1;
extern unsigned char v3 (unsigned short, signed short, signed char);
extern unsigned char (*v4) (unsigned short, signed short, signed char);
extern signed short v5 (unsigned char, signed short, signed short, signed int);
extern signed short (*v6) (unsigned char, signed short, signed short, signed int);
unsigned char v7 (unsigned char, unsigned int);
unsigned char (*v8) (unsigned char, unsigned int) = v7;
extern signed short v9 (signed short, signed short, signed int);
extern signed short (*v10) (signed short, signed short, signed int);
extern unsigned short v11 (signed short, signed char, unsigned int);
extern unsigned short (*v12) (signed short, signed char, unsigned int);
unsigned short v13 (signed int, unsigned int, signed char, signed int);
unsigned short (*v14) (signed int, unsigned int, signed char, signed int) = v13;
extern unsigned short v15 (unsigned short, signed short, unsigned short, signed int);
extern unsigned short (*v16) (unsigned short, signed short, unsigned short, signed int);
extern signed int v17 (unsigned char, signed int, signed char);
extern signed int (*v18) (unsigned char, signed int, signed char);
extern unsigned short v19 (signed int, unsigned int, unsigned char);
extern unsigned short (*v20) (signed int, unsigned int, unsigned char);
extern signed short v21 (unsigned char, unsigned short);
extern signed short (*v22) (unsigned char, unsigned short);
extern unsigned char v23 (unsigned short, signed char, unsigned char);
extern unsigned char (*v24) (unsigned short, signed char, unsigned char);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern signed char v27 (unsigned char, unsigned char);
extern signed char (*v28) (unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 7;
signed char v32 = 3;
unsigned char v31 = 7;

unsigned short v13 (signed int v34, unsigned int v35, signed char v36, signed int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed short v40 = 3;
unsigned int v39 = 3U;
unsigned short v38 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (unsigned char v41, unsigned int v42)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned char v45 = 0;
unsigned int v44 = 2U;
unsigned int v43 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v1 (unsigned short v46, signed char v47)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
signed char v50 = -4;
signed int v49 = -2;
unsigned int v48 = 3U;
trace++;
switch (trace)
{
case 0: 
{
signed int v51;
unsigned int v52;
unsigned char v53;
unsigned short v54;
v51 = v49 - 2;
v52 = v48 - v48;
v53 = 4 - 5;
v54 = v19 (v51, v52, v53);
history[history_index++] = (int)v54;
}
break;
case 6: 
return v50;
case 7: 
{
unsigned short v55;
signed short v56;
signed char v57;
unsigned char v58;
v55 = 4 + 1;
v56 = -1 - 1;
v57 = v47 + v47;
v58 = v3 (v55, v56, v57);
history[history_index++] = (int)v58;
}
break;
case 9: 
{
signed int v59;
v59 = v25 ();
history[history_index++] = (int)v59;
}
break;
case 11: 
return 0;
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
unsigned short v62;
signed char v63;
signed char v64;
v62 = v33 + v33;
v63 = v32 + 1;
v64 = v1 (v62, v63);
history[history_index++] = (int)v64;
}
} while (trace < 11);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
