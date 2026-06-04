#include <stdio.h>
#include <stdlib.h>
static signed char v1 (signed char, signed int, signed char);
static signed char (*v2) (signed char, signed int, signed char) = v1;
extern signed char v3 (signed int, unsigned short);
extern signed char (*v4) (signed int, unsigned short);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
unsigned char v7 (signed int);
unsigned char (*v8) (signed int) = v7;
extern signed int v9 (signed char, signed short, unsigned int, unsigned int);
extern signed int (*v10) (signed char, signed short, unsigned int, unsigned int);
extern unsigned int v11 (signed int, unsigned int, signed int);
extern unsigned int (*v12) (signed int, unsigned int, signed int);
extern signed char v13 (unsigned char);
extern signed char (*v14) (unsigned char);
extern unsigned int v15 (signed char, signed short, signed int, unsigned char);
extern unsigned int (*v16) (signed char, signed short, signed int, unsigned char);
extern signed short v17 (unsigned short, signed short, unsigned int);
extern signed short (*v18) (unsigned short, signed short, unsigned int);
extern unsigned int v19 (signed short);
extern unsigned int (*v20) (signed short);
extern unsigned short v21 (signed char, signed short, unsigned char, signed char);
extern unsigned short (*v22) (signed char, signed short, unsigned char, signed char);
static unsigned short v23 (unsigned short, signed int, signed char);
static unsigned short (*v24) (unsigned short, signed int, signed char) = v23;
extern unsigned short v25 (signed int);
extern unsigned short (*v26) (signed int);
extern signed char v27 (void);
extern signed char (*v28) (void);
extern unsigned char v29 (unsigned int, unsigned int, unsigned short, signed int);
extern unsigned char (*v30) (unsigned int, unsigned int, unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 2U;
unsigned short v32 = 2;
unsigned int v31 = 2U;

static unsigned short v23 (unsigned short v34, signed int v35, signed char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed short v39 = -2;
signed int v38 = 2;
signed short v37 = -3;
trace++;
switch (trace)
{
case 3: 
{
signed char v40;
v40 = v27 ();
history[history_index++] = (int)v40;
}
break;
case 5: 
{
signed char v41;
v41 = v27 ();
history[history_index++] = (int)v41;
}
break;
case 7: 
{
signed char v42;
v42 = v27 ();
history[history_index++] = (int)v42;
}
break;
case 9: 
return 1;
default: abort ();
}
}
}
}

unsigned char v7 (signed int v43)
{
history[history_index++] = (int)v43;
{
for (;;) {
signed char v46 = 1;
unsigned char v45 = 4;
signed int v44 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v1 (signed char v47, signed int v48, signed char v49)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
signed int v52 = 2;
unsigned char v51 = 3;
signed int v50 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed char v53;
v53 = v27 ();
history[history_index++] = (int)v53;
}
break;
case 2: 
{
unsigned short v54;
signed int v55;
signed char v56;
unsigned short v57;
v54 = 3 - 2;
v55 = v50 + v48;
v56 = 0 - v49;
v57 = v23 (v54, v55, v56);
history[history_index++] = (int)v57;
}
break;
case 10: 
return v49;
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
signed char v60;
signed int v61;
signed char v62;
signed char v63;
v60 = -2 + 2;
v61 = -1 + 2;
v62 = -1 + 1;
v63 = v1 (v60, v61, v62);
history[history_index++] = (int)v63;
}
} while (trace < 10);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
