#include <stdio.h>
#include <stdlib.h>
static unsigned int v1 (signed short, signed int);
static unsigned int (*v2) (signed short, signed int) = v1;
extern signed int v3 (signed int, unsigned char, unsigned char);
extern signed int (*v4) (signed int, unsigned char, unsigned char);
extern signed short v5 (unsigned char, unsigned char, unsigned int, unsigned short);
extern signed short (*v6) (unsigned char, unsigned char, unsigned int, unsigned short);
extern unsigned short v7 (signed short, unsigned char, signed int, unsigned short);
extern unsigned short (*v8) (signed short, unsigned char, signed int, unsigned short);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned short v11 (unsigned char, signed char, unsigned int, unsigned short);
extern unsigned short (*v12) (unsigned char, signed char, unsigned int, unsigned short);
extern unsigned short v13 (unsigned char);
extern unsigned short (*v14) (unsigned char);
extern void v15 (unsigned int, unsigned short, signed char);
extern void (*v16) (unsigned int, unsigned short, signed char);
unsigned short v17 (signed char, signed int);
unsigned short (*v18) (signed char, signed int) = v17;
extern signed short v19 (unsigned short, signed short);
extern signed short (*v20) (unsigned short, signed short);
static signed short v21 (unsigned int, signed short, unsigned int);
static signed short (*v22) (unsigned int, signed short, unsigned int) = v21;
extern signed short v23 (signed char, signed char, signed int);
extern signed short (*v24) (signed char, signed char, signed int);
extern void v25 (void);
extern void (*v26) (void);
extern signed short v27 (signed short, signed char);
extern signed short (*v28) (signed short, signed char);
unsigned short v29 (unsigned int, signed short, signed int);
unsigned short (*v30) (unsigned int, signed short, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 3;
unsigned char v32 = 2;
unsigned char v31 = 7;

unsigned short v29 (unsigned int v34, signed short v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned int v39 = 3U;
unsigned short v38 = 5;
signed char v37 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v21 (unsigned int v40, signed short v41, unsigned int v42)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
signed char v45 = 0;
signed int v44 = 2;
unsigned int v43 = 1U;
trace++;
switch (trace)
{
case 5: 
return -2;
case 9: 
return 0;
default: abort ();
}
}
}
}

unsigned short v17 (signed char v46, signed int v47)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
unsigned short v50 = 1;
signed short v49 = -4;
unsigned short v48 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v1 (signed short v51, signed int v52)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
unsigned short v55 = 5;
signed int v54 = 0;
signed char v53 = -4;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v56;
v56 = v9 ();
history[history_index++] = (int)v56;
}
break;
case 4: 
{
unsigned int v57;
signed short v58;
unsigned int v59;
signed short v60;
v57 = 7U - 2U;
v58 = v51 - v51;
v59 = 2U + 4U;
v60 = v21 (v57, v58, v59);
history[history_index++] = (int)v60;
}
break;
case 6: 
{
signed short v61;
unsigned char v62;
signed int v63;
unsigned short v64;
unsigned short v65;
v61 = -3 - -1;
v62 = 2 + 5;
v63 = 0 - v54;
v64 = 0 - v55;
v65 = v7 (v61, v62, v63, v64);
history[history_index++] = (int)v65;
}
break;
case 8: 
{
unsigned int v66;
signed short v67;
unsigned int v68;
signed short v69;
v66 = 0U - 5U;
v67 = 3 - 1;
v68 = 3U - 6U;
v69 = v21 (v66, v67, v68);
history[history_index++] = (int)v69;
}
break;
case 10: 
return 6U;
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
signed short v72;
signed int v73;
unsigned int v74;
v72 = 2 + -1;
v73 = -4 - 0;
v74 = v1 (v72, v73);
history[history_index++] = (int)v74;
}
} while (trace < 10);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
